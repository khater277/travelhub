// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthBodyImpl _$$AuthBodyImplFromJson(Map<String, dynamic> json) =>
    _$AuthBodyImpl(
      name: json['name'] as String?,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$AuthBodyImplToJson(_$AuthBodyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
    };
