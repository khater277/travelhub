// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotels.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HotelsAdapter extends TypeAdapter<Hotels> {
  @override
  final int typeId = 24;

  @override
  Hotels read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Hotels();
  }

  @override
  void write(BinaryWriter writer, Hotels obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HotelsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelsImpl _$$HotelsImplFromJson(Map<String, dynamic> json) => _$HotelsImpl(
      availabilityBodyHotel:
          (json['hotel'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$HotelsImplToJson(_$HotelsImpl instance) =>
    <String, dynamic>{
      'hotel': instance.availabilityBodyHotel,
    };
