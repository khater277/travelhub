import 'package:json_annotation/json_annotation.dart';

part 'prediction.g.dart';

@JsonSerializable()
class Prediction {
  String? description;

  @JsonKey(name: 'place_id')
  String? placeId;

  Prediction({
    this.description,
    this.placeId,
  });

  factory Prediction.fromJson(Map<String, dynamic> json) {
    return _$PredictionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PredictionToJson(this);
}
