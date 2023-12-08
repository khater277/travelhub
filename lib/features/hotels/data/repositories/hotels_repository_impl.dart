import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:travelhub/core/errors/failures.dart';
import 'package:travelhub/core/local_storage/facilities_storage.dart';
import 'package:travelhub/core/local_storage/hotels_storage.dart';
import 'package:travelhub/core/local_storage/keys.dart';
import 'package:travelhub/core/network/network_info.dart';
import 'package:travelhub/features/hotels/data/datasources/hotels_remote_data_source.dart';
import 'package:travelhub/features/hotels/data/models/facilities_params_model/facilities_body_model/facilities_params_model.dart';
import 'package:travelhub/features/hotels/data/models/facilities_response_model/facilities_response_model.dart';
import 'package:travelhub/features/hotels/data/models/hotels_params_model/hotels_params_model.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/hotels_response_model.dart';
import 'package:travelhub/features/hotels/domain/repositories/hotels_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HotelsRepositoryImpl implements HotelsRepository {
  final HotelsRemoteDataSource hotelsRemoteDataSource;
  final NetworkInfo networkInfo;
  final FacilitiesStorage facilitiesStorage;
  final HotelsStorage hotelsStorage;

  HotelsRepositoryImpl({
    required this.hotelsRemoteDataSource,
    required this.networkInfo,
    required this.facilitiesStorage,
    required this.hotelsStorage,
  });
  @override
  Future<Either<Failure, HotelsResponseModel>> getHotels({
    required HotelsParamsModel hotelsParamsModel,
  }) async {
    if (await networkInfo.connected()) {
      try {
        final response = await hotelsRemoteDataSource.getHotels(
            hotelsParamsModel: hotelsParamsModel);
        await hotelsStorage.saveData(
            id: HiveKeys.allHotelsData, data: response);
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
  Future<Either<Failure, FacilitiesResponseModel>> getFacilities(
      {required FacilitiesParamsModel facilitiesParamsModel}) async {
    if (await networkInfo.connected()) {
      try {
        final response = await hotelsRemoteDataSource.getFacilities(
            facilitiesParamsModel: facilitiesParamsModel);
        await facilitiesStorage.saveData(
            id: HiveKeys.facilities, data: response);
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
