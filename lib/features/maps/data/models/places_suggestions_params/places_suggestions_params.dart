import 'package:json_annotation/json_annotation.dart';

part 'places_suggestions_params.g.dart';

@JsonSerializable()
class PlacesSuggestionsParams {
  String? input;
  String? components;

  @JsonKey(name: 'sessiontoken')
  String? sessionToken;
  String? types;
  String? key;

  PlacesSuggestionsParams({
    this.input,
    this.components,
    this.sessionToken,
    this.types,
    this.key,
  });

  factory PlacesSuggestionsParams.fromJson(Map<String, dynamic> json) {
    return _$PlacesSuggestionsParamsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PlacesSuggestionsParamsToJson(this);
}
