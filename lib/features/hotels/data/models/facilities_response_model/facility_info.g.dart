// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facility_info.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FacilityInfoAdapter extends TypeAdapter<FacilityInfo> {
  @override
  final int typeId = 15;

  @override
  FacilityInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FacilityInfo(
      code: fields[0] as int?,
      facilityGroupCode: fields[1] as int?,
      facilityTypologyCode: fields[2] as int?,
      description: fields[3] as FacilityDescription?,
    );
  }

  @override
  void write(BinaryWriter writer, FacilityInfo obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.code)
      ..writeByte(1)
      ..write(obj.facilityGroupCode)
      ..writeByte(2)
      ..write(obj.facilityTypologyCode)
      ..writeByte(3)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FacilityInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FacilityInfoImpl _$$FacilityInfoImplFromJson(Map<String, dynamic> json) =>
    _$FacilityInfoImpl(
      code: json['code'] as int?,
      facilityGroupCode: json['facilityGroupCode'] as int?,
      facilityTypologyCode: json['facilityTypologyCode'] as int?,
      description: json['description'] == null
          ? null
          : FacilityDescription.fromJson(
              json['description'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FacilityInfoImplToJson(_$FacilityInfoImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'facilityGroupCode': instance.facilityGroupCode,
      'facilityTypologyCode': instance.facilityTypologyCode,
      'description': instance.description,
    };
