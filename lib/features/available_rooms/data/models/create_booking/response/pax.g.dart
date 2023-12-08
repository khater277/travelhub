// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pax.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PaxAdapter extends TypeAdapter<Pax> {
  @override
  final int typeId = 59;

  @override
  Pax read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Pax(
      roomId: fields[0] as int?,
      type: fields[1] as String?,
      name: fields[2] as String?,
      surname: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Pax obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.roomId)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.surname);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaxImpl _$$PaxImplFromJson(Map<String, dynamic> json) => _$PaxImpl(
      roomId: json['roomId'] as int?,
      type: json['type'] as String?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
    );

Map<String, dynamic> _$$PaxImplToJson(_$PaxImpl instance) => <String, dynamic>{
      'roomId': instance.roomId,
      'type': instance.type,
      'name': instance.name,
      'surname': instance.surname,
    };
