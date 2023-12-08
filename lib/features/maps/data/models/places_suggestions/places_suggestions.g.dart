// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_suggestions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacesSuggestions _$PlacesSuggestionsFromJson(Map<String, dynamic> json) =>
    PlacesSuggestions(
      predictions: (json['predictions'] as List<dynamic>?)
          ?.map((e) => Prediction.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$PlacesSuggestionsToJson(PlacesSuggestions instance) =>
    <String, dynamic>{
      'predictions': instance.predictions,
      'status': instance.status,
    };
