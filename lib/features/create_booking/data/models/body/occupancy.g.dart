// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'occupancy.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OccupancyAdapter extends TypeAdapter<Occupancy> {
  @override
  final int typeId = 25;

  @override
  Occupancy read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Occupancy();
  }

  @override
  void write(BinaryWriter writer, Occupancy obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OccupancyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OccupancyImpl _$$OccupancyImplFromJson(Map<String, dynamic> json) =>
    _$OccupancyImpl(
      rooms: json['rooms'] as int?,
      adults: json['adults'] as int?,
      children: json['children'] as int?,
    );

Map<String, dynamic> _$$OccupancyImplToJson(_$OccupancyImpl instance) =>
    <String, dynamic>{
      'rooms': instance.rooms,
      'adults': instance.adults,
      'children': instance.children,
    };
