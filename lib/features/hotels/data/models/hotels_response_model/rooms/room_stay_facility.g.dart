// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_stay_facility.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RoomStayFacilityAdapter extends TypeAdapter<RoomStayFacility> {
  @override
  final int typeId = 19;

  @override
  RoomStayFacility read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RoomStayFacility(
      facilityCode: fields[0] as int?,
      facilityGroupCode: fields[1] as int?,
      number: fields[2] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, RoomStayFacility obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.facilityCode)
      ..writeByte(1)
      ..write(obj.facilityGroupCode)
      ..writeByte(2)
      ..write(obj.number);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoomStayFacilityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomStayFacilityImpl _$$RoomStayFacilityImplFromJson(
        Map<String, dynamic> json) =>
    _$RoomStayFacilityImpl(
      facilityCode: json['facilityCode'] as int?,
      facilityGroupCode: json['facilityGroupCode'] as int?,
      number: json['number'] as int?,
    );

Map<String, dynamic> _$$RoomStayFacilityImplToJson(
        _$RoomStayFacilityImpl instance) =>
    <String, dynamic>{
      'facilityCode': instance.facilityCode,
      'facilityGroupCode': instance.facilityGroupCode,
      'number': instance.number,
    };
