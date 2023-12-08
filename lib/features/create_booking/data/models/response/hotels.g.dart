// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotels.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AvailableHotelsAdapter extends TypeAdapter<AvailableHotels> {
  @override
  final int typeId = 31;

  @override
  AvailableHotels read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AvailableHotels(
      availableHotels: (fields[0] as List?)?.cast<AvailableHotel>(),
      checkIn: fields[1] as String?,
      total: fields[2] as int?,
      checkOut: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AvailableHotels obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.availableHotels)
      ..writeByte(1)
      ..write(obj.checkIn)
      ..writeByte(2)
      ..write(obj.total)
      ..writeByte(3)
      ..write(obj.checkOut);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AvailableHotelsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvailableHotelsImpl _$$AvailableHotelsImplFromJson(
        Map<String, dynamic> json) =>
    _$AvailableHotelsImpl(
      availableHotels: (json['hotels'] as List<dynamic>?)
          ?.map((e) => AvailableHotel.fromJson(e as Map<String, dynamic>))
          .toList(),
      checkIn: json['checkIn'] as String?,
      total: json['total'] as int?,
      checkOut: json['checkOut'] as String?,
    );

Map<String, dynamic> _$$AvailableHotelsImplToJson(
        _$AvailableHotelsImpl instance) =>
    <String, dynamic>{
      'hotels': instance.availableHotels,
      'checkIn': instance.checkIn,
      'total': instance.total,
      'checkOut': instance.checkOut,
    };
