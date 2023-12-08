import 'package:dio/dio.dart';
import 'package:travelhub/core/apis/maps/maps_end_points.dart';
import 'package:travelhub/features/maps/data/models/places_suggestions/places_suggestions.dart';
import 'package:retrofit/retrofit.dart';

part 'maps_api.g.dart';

@RestApi(baseUrl: MapsEndPoints.baseUrl)
abstract class MapsApi {
  factory MapsApi(Dio dio, {String baseUrl}) = _MapsApi;

  @GET(MapsEndPoints.places)
  Future<PlacesSuggestions> getPlacesSuggestions({
    @Queries() required Map<String, dynamic> placesSuggestionsParamsModel,
  });
}
