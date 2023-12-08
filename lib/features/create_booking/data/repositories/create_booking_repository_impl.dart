import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travelhub/core/errors/failures.dart';
import 'package:travelhub/core/network/network_info.dart';
import 'package:travelhub/features/create_booking/data/datasources/create_booking_remote_data_source.dart';
import 'package:travelhub/features/create_booking/data/models/body/check_availability_body.dart';
import 'package:travelhub/features/create_booking/data/models/response/check_availability_response.dart';
import 'package:travelhub/features/create_booking/domain/repositories/create_booking_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class CreateBookingRepositoryImpl implements CreateBookingRepository {
  final NetworkInfo networkInfo;
  final CreateBookingRemoteDataSource createBookingRemoteDataSource;

  CreateBookingRepositoryImpl(
      {required this.createBookingRemoteDataSource, required this.networkInfo});
  @override
  Future<Either<Failure, CheckAvailabilityResponse>> checkAvailability(
      {required CheckAvailabilityBody checkAvailabilityBody}) async {
    if (await networkInfo.connected()) {
      try {
        final response = await createBookingRemoteDataSource.checkAvailability(
            checkAvailabilityBody: checkAvailabilityBody);
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
}
