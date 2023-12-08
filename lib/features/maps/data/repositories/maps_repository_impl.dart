import 'package:travelhub/features/maps/data/datasources/maps_remote_data_source.dart';
import 'package:travelhub/features/maps/data/models/places_suggestions/places_suggestions.dart';
import 'package:travelhub/core/errors/failures.dart';
import 'package:travelhub/features/maps/domain/repositories/maps_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class MapsRepositoryImpl implements MapsRepository {
  final MapsRemoteDataSource mapsRemoteDataSource;

  MapsRepositoryImpl({required this.mapsRemoteDataSource});
  @override
  Future<Either<Failure, PlacesSuggestions>> getPlacesSuggestions(
      placesSuggestionsParams) async {
    try {
      final response = await mapsRemoteDataSource.getPlacesSuggestions(
          placesSuggestionsParams: placesSuggestionsParams);
      return Right(response);
    } on DioException catch (error) {
      return Left(ServerFailure(error: error, type: NetworkErrorTypes.api));
    }
  }
}
