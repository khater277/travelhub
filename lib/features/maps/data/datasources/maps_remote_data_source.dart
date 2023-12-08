import 'package:travelhub/core/apis/maps/maps_api.dart';
import 'package:travelhub/features/maps/data/models/places_suggestions/places_suggestions.dart';
import 'package:travelhub/features/maps/data/models/places_suggestions_params/places_suggestions_params.dart';

abstract class MapsRemoteDataSource {
  Future<PlacesSuggestions> getPlacesSuggestions(
      {required PlacesSuggestionsParams placesSuggestionsParams});
}

class MapsRemoteDataSourceImpl implements MapsRemoteDataSource {
  final MapsApi mapsApi;

  MapsRemoteDataSourceImpl({required this.mapsApi});
  @override
  Future<PlacesSuggestions> getPlacesSuggestions({
    required PlacesSuggestionsParams placesSuggestionsParams,
  }) {
    return mapsApi.getPlacesSuggestions(
        placesSuggestionsParamsModel: placesSuggestionsParams.toJson());
  }
}
