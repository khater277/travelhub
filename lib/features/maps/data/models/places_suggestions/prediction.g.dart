// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prediction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Prediction _$PredictionFromJson(Map<String, dynamic> json) => Prediction(
      description: json['description'] as String?,
      placeId: json['place_id'] as String?,
    );

Map<String, dynamic> _$PredictionToJson(Prediction instance) =>
    <String, dynamic>{
      'description': instance.description,
      'place_id': instance.placeId,
    };
