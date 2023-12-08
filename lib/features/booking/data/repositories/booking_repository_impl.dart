import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:travelhub/core/errors/failures.dart';
import 'package:travelhub/core/local_storage/bookings_storage.dart';
import 'package:travelhub/core/network/network_info.dart';
import 'package:travelhub/features/booking/data/datasources/booking_remote_data_source.dart';
import 'package:travelhub/features/booking/data/models/booking_details_model/booking_details_model.dart';
import 'package:travelhub/features/booking/domain/repository/booking_repository.dart';
import 'package:travelhub/features/booking/domain/usecases/update_my_booking.dart';

class BookingRepositoryImpl implements BookingRepository {
  final NetworkInfo networkInfo;
  final BookingRemoteDataSource bookingRemoteDataSource;
  final BookingsStorage bookingsStorage;

  BookingRepositoryImpl({
    required this.bookingRemoteDataSource,
    required this.networkInfo,
    required this.bookingsStorage,
  });
  @override
  Future<Either<Failure, List<BookingDetailsModel>>> getMyBookings() async {
    if (await networkInfo.connected()) {
      try {
        final response = await bookingRemoteDataSource.getMyBookings();
        for (var bookingDetailsModel in response) {
          bookingsStorage.saveData(
              id: bookingDetailsModel.bookingId!, data: bookingDetailsModel);
        }

        return Right(response);
      } on FirebaseException catch (error) {
        return Left(
            ServerFailure(error: error, type: NetworkErrorTypes.firestore));
      }
    } else {
      FirebaseException error =
          FirebaseException(plugin: '', code: 'no-internet-connection');
      return Left(
          ServerFailure(error: error, type: NetworkErrorTypes.firestore));
    }
  }

  @override
  Future<Either<Failure, void>> updateMyBooking(
      {required UpdateMyBookingParams params}) async {
    if (await networkInfo.connected()) {
      try {
        final response =
            await bookingRemoteDataSource.updateMyBooking(params: params);
        final String type = params.bookingType;
        bookingsStorage.saveData(
            id: params.bookingId,
            data: bookingsStorage
                .getData(id: params.bookingId)!
                .copyWith(type: type));

        return Right(response);
      } on FirebaseException catch (error) {
        return Left(
            ServerFailure(error: error, type: NetworkErrorTypes.firestore));
      }
    } else {
      FirebaseException error =
          FirebaseException(plugin: '', code: 'no-internet-connection');
      return Left(
          ServerFailure(error: error, type: NetworkErrorTypes.firestore));
    }
  }
}
