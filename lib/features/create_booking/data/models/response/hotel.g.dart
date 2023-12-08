// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AvailableHotelAdapter extends TypeAdapter<AvailableHotel> {
  @override
  final int typeId = 30;

  @override
  AvailableHotel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AvailableHotel(
      code: fields[0] as int?,
      name: fields[1] as String?,
      categoryCode: fields[2] as String?,
      categoryName: fields[3] as String?,
      destinationCode: fields[4] as String?,
      destinationName: fields[5] as String?,
      zoneCode: fields[6] as int?,
      zoneName: fields[7] as String?,
      latitude: fields[8] as String?,
      longitude: fields[9] as String?,
      availableRooms: (fields[10] as List?)?.cast<AvailableRoom>(),
      minRate: fields[11] as String?,
      maxRate: fields[12] as String?,
      currency: fields[13] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AvailableHotel obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.code)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.categoryCode)
      ..writeByte(3)
      ..write(obj.categoryName)
      ..writeByte(4)
      ..write(obj.destinationCode)
      ..writeByte(5)
      ..write(obj.destinationName)
      ..writeByte(6)
      ..write(obj.zoneCode)
      ..writeByte(7)
      ..write(obj.zoneName)
      ..writeByte(8)
      ..write(obj.latitude)
      ..writeByte(9)
      ..write(obj.longitude)
      ..writeByte(10)
      ..write(obj.availableRooms)
      ..writeByte(11)
      ..write(obj.minRate)
      ..writeByte(12)
      ..write(obj.maxRate)
      ..writeByte(13)
      ..write(obj.currency);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AvailableHotelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvailableHotelImpl _$$AvailableHotelImplFromJson(Map<String, dynamic> json) =>
    _$AvailableHotelImpl(
      code: json['code'] as int?,
      name: json['name'] as String?,
      categoryCode: json['categoryCode'] as String?,
      categoryName: json['categoryName'] as String?,
      destinationCode: json['destinationCode'] as String?,
      destinationName: json['destinationName'] as String?,
      zoneCode: json['zoneCode'] as int?,
      zoneName: json['zoneName'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      availableRooms: (json['rooms'] as List<dynamic>?)
          ?.map((e) => AvailableRoom.fromJson(e as Map<String, dynamic>))
          .toList(),
      minRate: json['minRate'] as String?,
      maxRate: json['maxRate'] as String?,
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$$AvailableHotelImplToJson(
        _$AvailableHotelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'categoryCode': instance.categoryCode,
      'categoryName': instance.categoryName,
      'destinationCode': instance.destinationCode,
      'destinationName': instance.destinationName,
      'zoneCode': instance.zoneCode,
      'zoneName': instance.zoneName,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'rooms': instance.availableRooms,
      'minRate': instance.minRate,
      'maxRate': instance.maxRate,
      'currency': instance.currency,
    };
