// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotels_params_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelsParamsModelImpl _$$HotelsParamsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HotelsParamsModelImpl(
      codes: (json['codes'] as List<dynamic>?)?.map((e) => e as int).toList(),
      countryCode: json['countryCode'] as String?,
      from: json['from'] as int?,
      to: json['to'] as int?,
      language: json['language'] as String?,
    );

Map<String, dynamic> _$$HotelsParamsModelImplToJson(
        _$HotelsParamsModelImpl instance) =>
    <String, dynamic>{
      'codes': instance.codes,
      'countryCode': instance.countryCode,
      'from': instance.from,
      'to': instance.to,
      'language': instance.language,
    };
