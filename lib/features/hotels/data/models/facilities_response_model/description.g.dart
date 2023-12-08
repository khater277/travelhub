// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'description.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FacilityDescriptionAdapter extends TypeAdapter<FacilityDescription> {
  @override
  final int typeId = 16;

  @override
  FacilityDescription read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FacilityDescription(
      languageCode: fields[0] as String?,
      content: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, FacilityDescription obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.languageCode)
      ..writeByte(1)
      ..write(obj.content);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FacilityDescriptionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FacilityDescriptionImpl _$$FacilityDescriptionImplFromJson(
        Map<String, dynamic> json) =>
    _$FacilityDescriptionImpl(
      languageCode: json['languageCode'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$FacilityDescriptionImplToJson(
        _$FacilityDescriptionImpl instance) =>
    <String, dynamic>{
      'languageCode': instance.languageCode,
      'content': instance.content,
    };
