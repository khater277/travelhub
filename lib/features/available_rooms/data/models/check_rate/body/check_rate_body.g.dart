// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_rate_body.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CheckRateBodyAdapter extends TypeAdapter<CheckRateBody> {
  @override
  final int typeId = 36;

  @override
  CheckRateBody read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CheckRateBody();
  }

  @override
  void write(BinaryWriter writer, CheckRateBody obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CheckRateBodyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckRateBodyImpl _$$CheckRateBodyImplFromJson(Map<String, dynamic> json) =>
    _$CheckRateBodyImpl(
      rateRooms: (json['rooms'] as List<dynamic>?)
          ?.map((e) => RateRoom.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CheckRateBodyImplToJson(_$CheckRateBodyImpl instance) =>
    <String, dynamic>{
      'rooms': instance.rateRooms,
    };
