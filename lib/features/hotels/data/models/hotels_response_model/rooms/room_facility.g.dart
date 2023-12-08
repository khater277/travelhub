// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_facility.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RoomFacilityAdapter extends TypeAdapter<RoomFacility> {
  @override
  final int typeId = 18;

  @override
  RoomFacility read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RoomFacility(
      facilityCode: fields[0] as int?,
      facilityGroupCode: fields[1] as int?,
      indLogic: fields[2] as bool?,
      voucher: fields[3] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, RoomFacility obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.facilityCode)
      ..writeByte(1)
      ..write(obj.facilityGroupCode)
      ..writeByte(2)
      ..write(obj.indLogic)
      ..writeByte(3)
      ..write(obj.voucher);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoomFacilityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomFacilityImpl _$$RoomFacilityImplFromJson(Map<String, dynamic> json) =>
    _$RoomFacilityImpl(
      facilityCode: json['facilityCode'] as int?,
      facilityGroupCode: json['facilityGroupCode'] as int?,
      indLogic: json['indLogic'] as bool?,
      voucher: json['voucher'] as bool?,
    );

Map<String, dynamic> _$$RoomFacilityImplToJson(_$RoomFacilityImpl instance) =>
    <String, dynamic>{
      'facilityCode': instance.facilityCode,
      'facilityGroupCode': instance.facilityGroupCode,
      'indLogic': instance.indLogic,
      'voucher': instance.voucher,
    };
