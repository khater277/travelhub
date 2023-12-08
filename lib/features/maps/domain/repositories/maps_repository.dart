import 'package:travelhub/core/errors/failures.dart';
import 'package:travelhub/features/maps/data/models/places_suggestions/places_suggestions.dart';
import 'package:travelhub/features/maps/data/models/places_suggestions_params/places_suggestions_params.dart';
import 'package:dartz/dartz.dart';

abstract class MapsRepository {
  Future<Either<Failure, PlacesSuggestions>> getPlacesSuggestions(
      PlacesSuggestionsParams placesSuggestionsParams);
}
