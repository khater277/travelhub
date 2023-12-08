// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookingRoomAdapter extends TypeAdapter<BookingRoom> {
  @override
  final int typeId = 61;

  @override
  BookingRoom read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookingRoom(
      status: fields[0] as String?,
      id: fields[1] as int?,
      code: fields[2] as String?,
      name: fields[3] as String?,
      paxes: (fields[4] as List?)?.cast<Pax>(),
      bookingRates: (fields[5] as List?)?.cast<BookingRate>(),
    );
  }

  @override
  void write(BinaryWriter writer, BookingRoom obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.status)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.code)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.paxes)
      ..writeByte(5)
      ..write(obj.bookingRates);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookingRoomAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingRoomImpl _$$BookingRoomImplFromJson(Map<String, dynamic> json) =>
    _$BookingRoomImpl(
      status: json['status'] as String?,
      id: json['id'] as int?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      paxes: (json['paxes'] as List<dynamic>?)
          ?.map((e) => Pax.fromJson(e as Map<String, dynamic>))
          .toList(),
      bookingRates: (json['rates'] as List<dynamic>?)
          ?.map((e) => BookingRate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BookingRoomImplToJson(_$BookingRoomImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'paxes': instance.paxes,
      'rates': instance.bookingRates,
    };
