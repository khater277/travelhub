// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pax.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PaxAdapter extends TypeAdapter<Pax> {
  @override
  final int typeId = 49;

  @override
  Pax read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Pax();
  }

  @override
  void write(BinaryWriter writer, Pax obj) {
    writer.writeByte(0);
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
