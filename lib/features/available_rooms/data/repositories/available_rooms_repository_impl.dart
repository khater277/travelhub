import 'package:travelhub/core/errors/failures.dart';
import 'package:travelhub/core/network/network_info.dart';
import 'package:travelhub/features/available_rooms/data/datasources/available_rooms_data_source.dart';
import 'package:travelhub/features/available_rooms/data/models/check_rate/body/check_rate_body.dart';
import 'package:travelhub/features/available_rooms/data/models/check_rate/response/check_rate_response.dart';
import 'package:travelhub/features/available_rooms/data/models/create_booking/body/create_booking_body.dart';
import 'package:travelhub/features/available_rooms/data/models/create_booking/response/create_booking_response.dart';
import 'package:travelhub/features/available_rooms/domain/repositories/available_rooms_repository.dart';
import 'package:travelhub/features/booking/data/models/booking_details_model/booking_details_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class AvailableRoomsRepositoryImpl implements AvailableRoomsRepository {
  final NetworkInfo networkInfo;
  final AvailableRoomsRemoteDataSource availableRoomsRemoteDataSource;

  AvailableRoomsRepositoryImpl(
      {required this.networkInfo,
      required this.availableRoomsRemoteDataSource});

  @override
  Future<Either<Failure, CheckRateResponse>> checkRate(
      {required CheckRateBody checkRateBody}) async {
    if (await networkInfo.connected()) {
      try {
        final response = await availableRoomsRemoteDataSource.checkRate(
            checkRateBody: checkRateBody);
        return Right(response);
      } on DioException catch (error) {
        return Left(ServerFailure(error: error, type: NetworkErrorTypes.api));
      }
    } else {
      FirebaseException error =
          FirebaseException(plugin: '', code: 'no-internet-connection');
      return Left(
          ServerFailure(error: error, type: NetworkErrorTypes.firestore));
    }
  }

  @override
  Future<Either<Failure, CreateBookingResponse>> createBooking(
      {required CreateBookingBody createBookingBody}) async {
    if (await networkInfo.connected()) {
      try {
        final response = await availableRoomsRemoteDataSource.createBooking(
            createBookingBody: createBookingBody);
        return Right(response);
      } on DioException catch (error) {
        return Left(ServerFailure(error: error, type: NetworkErrorTypes.api));
      }
    } else {
      FirebaseException error =
          FirebaseException(plugin: '', code: 'no-internet-connection');
      return Left(
          ServerFailure(error: error, type: NetworkErrorTypes.firestore));
    }
  }

  @override
  Future<Either<Failure, void>> addBookingToFirestore({
    required String bookingId,
    required String userId,
    required BookingDetailsModel bookingDetails,
  }) async {
    if (await networkInfo.connected()) {
      try {
        final response =
            await availableRoomsRemoteDataSource.addBookingToFirestore(
          bookingId: bookingId,
          userId: userId,
          bookingDetails: bookingDetails,
        );
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
