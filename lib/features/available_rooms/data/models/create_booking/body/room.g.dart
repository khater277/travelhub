// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookingRoomAdapter extends TypeAdapter<BookingRoom> {
  @override
  final int typeId = 50;

  @override
  BookingRoom read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookingRoom();
  }

  @override
  void write(BinaryWriter writer, BookingRoom obj) {
    writer.writeByte(0);
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
      rateKey: json['rateKey'] as String?,
      paxes: (json['paxes'] as List<dynamic>?)
          ?.map((e) => Pax.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BookingRoomImplToJson(_$BookingRoomImpl instance) =>
    <String, dynamic>{
      'rateKey': instance.rateKey,
      'paxes': instance.paxes,
    };
