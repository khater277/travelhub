// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RoomAdapter extends TypeAdapter<Room> {
  @override
  final int typeId = 21;

  @override
  Room read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Room(
      roomCode: fields[0] as String?,
      isParentRoom: fields[1] as bool?,
      minPax: fields[2] as int?,
      maxPax: fields[3] as int?,
      maxAdults: fields[4] as int?,
      maxChildren: fields[5] as int?,
      minAdults: fields[6] as int?,
      roomType: fields[7] as String?,
      characteristicCode: fields[8] as String?,
      roomFacilities: (fields[9] as List?)?.cast<RoomFacility>(),
      roomStays: (fields[10] as List?)?.cast<RoomStay>(),
    );
  }

  @override
  void write(BinaryWriter writer, Room obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.roomCode)
      ..writeByte(1)
      ..write(obj.isParentRoom)
      ..writeByte(2)
      ..write(obj.minPax)
      ..writeByte(3)
      ..write(obj.maxPax)
      ..writeByte(4)
      ..write(obj.maxAdults)
      ..writeByte(5)
      ..write(obj.maxChildren)
      ..writeByte(6)
      ..write(obj.minAdults)
      ..writeByte(7)
      ..write(obj.roomType)
      ..writeByte(8)
      ..write(obj.characteristicCode)
      ..writeByte(9)
      ..write(obj.roomFacilities)
      ..writeByte(10)
      ..write(obj.roomStays);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoomAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomImpl _$$RoomImplFromJson(Map<String, dynamic> json) => _$RoomImpl(
      roomCode: json['roomCode'] as String?,
      isParentRoom: json['isParentRoom'] as bool?,
      minPax: json['minPax'] as int?,
      maxPax: json['maxPax'] as int?,
      maxAdults: json['maxAdults'] as int?,
      maxChildren: json['maxChildren'] as int?,
      minAdults: json['minAdults'] as int?,
      roomType: json['roomType'] as String?,
      characteristicCode: json['characteristicCode'] as String?,
      roomFacilities: (json['roomFacilities'] as List<dynamic>?)
          ?.map((e) => RoomFacility.fromJson(e as Map<String, dynamic>))
          .toList(),
      roomStays: (json['roomStays'] as List<dynamic>?)
          ?.map((e) => RoomStay.fromJson(e as Map<String, dynamic>))
          .toList(),
      pmsRoomCode: json['PMSRoomCode'] as String?,
    );

Map<String, dynamic> _$$RoomImplToJson(_$RoomImpl instance) =>
    <String, dynamic>{
      'roomCode': instance.roomCode,
      'isParentRoom': instance.isParentRoom,
      'minPax': instance.minPax,
      'maxPax': instance.maxPax,
      'maxAdults': instance.maxAdults,
      'maxChildren': instance.maxChildren,
      'minAdults': instance.minAdults,
      'roomType': instance.roomType,
      'characteristicCode': instance.characteristicCode,
      'roomFacilities': instance.roomFacilities,
      'roomStays': instance.roomStays,
      'PMSRoomCode': instance.pmsRoomCode,
    };
