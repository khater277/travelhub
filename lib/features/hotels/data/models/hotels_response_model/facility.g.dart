// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facility.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FacilityAdapter extends TypeAdapter<Facility> {
  @override
  final int typeId = 9;

  @override
  Facility read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Facility(
      facilityCode: fields[0] as int?,
      facilityGroupCode: fields[1] as int?,
      order: fields[2] as int?,
      indYesOrNo: fields[3] as bool?,
      number: fields[4] as int?,
      voucher: fields[5] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, Facility obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.facilityCode)
      ..writeByte(1)
      ..write(obj.facilityGroupCode)
      ..writeByte(2)
      ..write(obj.order)
      ..writeByte(3)
      ..write(obj.indYesOrNo)
      ..writeByte(4)
      ..write(obj.number)
      ..writeByte(5)
      ..write(obj.voucher);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FacilityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FacilityImpl _$$FacilityImplFromJson(Map<String, dynamic> json) =>
    _$FacilityImpl(
      facilityCode: json['facilityCode'] as int?,
      facilityGroupCode: json['facilityGroupCode'] as int?,
      order: json['order'] as int?,
      indYesOrNo: json['indYesOrNo'] as bool?,
      number: json['number'] as int?,
      voucher: json['voucher'] as bool?,
    );

Map<String, dynamic> _$$FacilityImplToJson(_$FacilityImpl instance) =>
    <String, dynamic>{
      'facilityCode': instance.facilityCode,
      'facilityGroupCode': instance.facilityGroupCode,
      'order': instance.order,
      'indYesOrNo': instance.indYesOrNo,
      'number': instance.number,
      'voucher': instance.voucher,
    };
