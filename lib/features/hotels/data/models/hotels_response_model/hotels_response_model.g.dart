// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotels_response_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HotelsResponseModelAdapter extends TypeAdapter<HotelsResponseModel> {
  @override
  final int typeId = 11;

  @override
  HotelsResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HotelsResponseModel(
      from: fields[0] as int?,
      to: fields[1] as int?,
      total: fields[2] as int?,
      hotels: (fields[3] as List?)?.cast<Hotel>(),
      rooms: fields[4] as Rooms?,
    );
  }

  @override
  void write(BinaryWriter writer, HotelsResponseModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.from)
      ..writeByte(1)
      ..write(obj.to)
      ..writeByte(2)
      ..write(obj.total)
      ..writeByte(3)
      ..write(obj.hotels)
      ..writeByte(4)
      ..write(obj.rooms);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HotelsResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelsResponseModelImpl _$$HotelsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HotelsResponseModelImpl(
      from: json['from'] as int?,
      to: json['to'] as int?,
      total: json['total'] as int?,
      hotels: (json['hotels'] as List<dynamic>?)
          ?.map((e) => Hotel.fromJson(e as Map<String, dynamic>))
          .toList(),
      rooms: json['rooms'] == null
          ? null
          : Rooms.fromJson(json['rooms'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HotelsResponseModelImplToJson(
        _$HotelsResponseModelImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'total': instance.total,
      'hotels': instance.hotels,
      'rooms': instance.rooms,
    };
