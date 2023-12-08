import 'package:json_annotation/json_annotation.dart';
import 'prediction.dart';
part 'places_suggestions.g.dart';

@JsonSerializable()
class PlacesSuggestions {
  List<Prediction>? predictions;
  String? status;

  PlacesSuggestions({this.predictions, this.status});

  factory PlacesSuggestions.fromJson(Map<String, dynamic> json) {
    return _$PlacesSuggestionsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PlacesSuggestionsToJson(this);
}
