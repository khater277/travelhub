// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RateHotelAdapter extends TypeAdapter<RateHotel> {
  @override
  final int typeId = 41;

  @override
  RateHotel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RateHotel(
      checkOut: fields[0] as String?,
      checkIn: fields[1] as String?,
      code: fields[2] as int?,
      name: fields[3] as String?,
      categoryCode: fields[4] as String?,
      categoryName: fields[5] as String?,
      destinationCode: fields[6] as String?,
      destinationName: fields[7] as String?,
      zoneCode: fields[8] as int?,
      zoneName: fields[9] as String?,
      latitude: fields[10] as String?,
      longitude: fields[11] as String?,
      rateRooms: (fields[12] as List?)?.cast<RateRoom>(),
      totalNet: fields[13] as String?,
      currency: fields[14] as String?,
      paymentDataRequired: fields[15] as bool?,
      modificationPolicies: fields[16] as ModificationPolicies?,
    );
  }

  @override
  void write(BinaryWriter writer, RateHotel obj) {
    writer
      ..writeByte(17)
      ..writeByte(0)
      ..write(obj.checkOut)
      ..writeByte(1)
      ..write(obj.checkIn)
      ..writeByte(2)
      ..write(obj.code)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.categoryCode)
      ..writeByte(5)
      ..write(obj.categoryName)
      ..writeByte(6)
      ..write(obj.destinationCode)
      ..writeByte(7)
      ..write(obj.destinationName)
      ..writeByte(8)
      ..write(obj.zoneCode)
      ..writeByte(9)
      ..write(obj.zoneName)
      ..writeByte(10)
      ..write(obj.latitude)
      ..writeByte(11)
      ..write(obj.longitude)
      ..writeByte(12)
      ..write(obj.rateRooms)
      ..writeByte(13)
      ..write(obj.totalNet)
      ..writeByte(14)
      ..write(obj.currency)
      ..writeByte(15)
      ..write(obj.paymentDataRequired)
      ..writeByte(16)
      ..write(obj.modificationPolicies);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RateHotelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RateHotelImpl _$$RateHotelImplFromJson(Map<String, dynamic> json) =>
    _$RateHotelImpl(
      checkOut: json['checkOut'] as String?,
      checkIn: json['checkIn'] as String?,
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
      rateRooms: (json['rooms'] as List<dynamic>?)
          ?.map((e) => RateRoom.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalNet: json['totalNet'] as String?,
      currency: json['currency'] as String?,
      paymentDataRequired: json['paymentDataRequired'] as bool?,
      modificationPolicies: json['modificationPolicies'] == null
          ? null
          : ModificationPolicies.fromJson(
              json['modificationPolicies'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RateHotelImplToJson(_$RateHotelImpl instance) =>
    <String, dynamic>{
      'checkOut': instance.checkOut,
      'checkIn': instance.checkIn,
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
      'rooms': instance.rateRooms,
      'totalNet': instance.totalNet,
      'currency': instance.currency,
      'paymentDataRequired': instance.paymentDataRequired,
      'modificationPolicies': instance.modificationPolicies,
    };
