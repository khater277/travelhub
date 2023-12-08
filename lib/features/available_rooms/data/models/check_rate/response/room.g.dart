// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RateRoomAdapter extends TypeAdapter<RateRoom> {
  @override
  final int typeId = 44;

  @override
  RateRoom read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RateRoom(
      code: fields[0] as String?,
      name: fields[1] as String?,
      rates: (fields[2] as List?)?.cast<Rate>(),
    );
  }

  @override
  void write(BinaryWriter writer, RateRoom obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.code)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.rates);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RateRoomAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RateRoomImpl _$$RateRoomImplFromJson(Map<String, dynamic> json) =>
    _$RateRoomImpl(
      code: json['code'] as String?,
      name: json['name'] as String?,
      rates: (json['rates'] as List<dynamic>?)
          ?.map((e) => Rate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RateRoomImplToJson(_$RateRoomImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'rates': instance.rates,
    };
