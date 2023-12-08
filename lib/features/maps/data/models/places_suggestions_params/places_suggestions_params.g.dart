// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_suggestions_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacesSuggestionsParams _$PlacesSuggestionsParamsFromJson(
        Map<String, dynamic> json) =>
    PlacesSuggestionsParams(
      input: json['input'] as String?,
      components: json['components'] as String?,
      sessionToken: json['sessiontoken'] as String?,
      types: json['types'] as String?,
      key: json['key'] as String?,
    );

Map<String, dynamic> _$PlacesSuggestionsParamsToJson(
        PlacesSuggestionsParams instance) =>
    <String, dynamic>{
      'input': instance.input,
      'components': instance.components,
      'sessiontoken': instance.sessionToken,
      'types': instance.types,
      'key': instance.key,
    };
