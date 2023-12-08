// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_stay.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RoomStayAdapter extends TypeAdapter<RoomStay> {
  @override
  final int typeId = 20;

  @override
  RoomStay read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RoomStay(
      stayType: fields[0] as String?,
      order: fields[1] as String?,
      description: fields[2] as String?,
      roomStayFacilities: (fields[3] as List?)?.cast<RoomStayFacility>(),
    );
  }

  @override
  void write(BinaryWriter writer, RoomStay obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.stayType)
      ..writeByte(1)
      ..write(obj.order)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.roomStayFacilities);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoomStayAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomStayImpl _$$RoomStayImplFromJson(Map<String, dynamic> json) =>
    _$RoomStayImpl(
      stayType: json['stayType'] as String?,
      order: json['order'] as String?,
      description: json['description'] as String?,
      roomStayFacilities: (json['roomStayFacilities'] as List<dynamic>?)
          ?.map((e) => RoomStayFacility.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RoomStayImplToJson(_$RoomStayImpl instance) =>
    <String, dynamic>{
      'stayType': instance.stayType,
      'order': instance.order,
      'description': instance.description,
      'roomStayFacilities': instance.roomStayFacilities,
    };
