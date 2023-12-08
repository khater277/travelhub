// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rooms.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RoomsAdapter extends TypeAdapter<Rooms> {
  @override
  final int typeId = 22;

  @override
  Rooms read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Rooms(
      rooms: (fields[0] as List?)?.cast<Room>(),
    );
  }

  @override
  void write(BinaryWriter writer, Rooms obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.rooms);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoomsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomsImpl _$$RoomsImplFromJson(Map<String, dynamic> json) => _$RoomsImpl(
      rooms: (json['rooms'] as List<dynamic>?)
          ?.map((e) => Room.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RoomsImplToJson(_$RoomsImpl instance) =>
    <String, dynamic>{
      'rooms': instance.rooms,
    };
