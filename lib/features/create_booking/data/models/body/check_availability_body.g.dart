// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_availability_body.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CheckAvailabilityBodyAdapter extends TypeAdapter<CheckAvailabilityBody> {
  @override
  final int typeId = 23;

  @override
  CheckAvailabilityBody read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CheckAvailabilityBody();
  }

  @override
  void write(BinaryWriter writer, CheckAvailabilityBody obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CheckAvailabilityBodyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckAvailabilityBodyImpl _$$CheckAvailabilityBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckAvailabilityBodyImpl(
      stay: json['stay'] == null
          ? null
          : Stay.fromJson(json['stay'] as Map<String, dynamic>),
      occupancies: (json['occupancies'] as List<dynamic>?)
          ?.map((e) => Occupancy.fromJson(e as Map<String, dynamic>))
          .toList(),
      availabilityBodyHotels: json['hotels'] == null
          ? null
          : Hotels.fromJson(json['hotels'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CheckAvailabilityBodyImplToJson(
        _$CheckAvailabilityBodyImpl instance) =>
    <String, dynamic>{
      'stay': instance.stay,
      'occupancies': instance.occupancies,
      'hotels': instance.availabilityBodyHotels,
    };
