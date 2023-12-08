// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookingRateAdapter extends TypeAdapter<BookingRate> {
  @override
  final int typeId = 60;

  @override
  BookingRate read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookingRate(
      rateClass: fields[0] as String?,
      net: fields[1] as String?,
      rateComments: fields[2] as String?,
      paymentType: fields[3] as String?,
      packaging: fields[4] as bool?,
      boardCode: fields[5] as String?,
      boardName: fields[6] as String?,
      cancellationPolicies: (fields[7] as List?)?.cast<CancellationPolicy>(),
      taxes: fields[8] as Taxes?,
      rooms: fields[9] as int?,
      adults: fields[10] as int?,
      children: fields[11] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, BookingRate obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.rateClass)
      ..writeByte(1)
      ..write(obj.net)
      ..writeByte(2)
      ..write(obj.rateComments)
      ..writeByte(3)
      ..write(obj.paymentType)
      ..writeByte(4)
      ..write(obj.packaging)
      ..writeByte(5)
      ..write(obj.boardCode)
      ..writeByte(6)
      ..write(obj.boardName)
      ..writeByte(7)
      ..write(obj.cancellationPolicies)
      ..writeByte(8)
      ..write(obj.taxes)
      ..writeByte(9)
      ..write(obj.rooms)
      ..writeByte(10)
      ..write(obj.adults)
      ..writeByte(11)
      ..write(obj.children);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookingRateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingRateImpl _$$BookingRateImplFromJson(Map<String, dynamic> json) =>
    _$BookingRateImpl(
      rateClass: json['rateClass'] as String?,
      net: json['net'] as String?,
      rateComments: json['rateComments'] as String?,
      paymentType: json['paymentType'] as String?,
      packaging: json['packaging'] as bool?,
      boardCode: json['boardCode'] as String?,
      boardName: json['boardName'] as String?,
      cancellationPolicies: (json['cancellationPolicies'] as List<dynamic>?)
          ?.map((e) => CancellationPolicy.fromJson(e as Map<String, dynamic>))
          .toList(),
      taxes: json['taxes'] == null
          ? null
          : Taxes.fromJson(json['taxes'] as Map<String, dynamic>),
      rooms: json['rooms'] as int?,
      adults: json['adults'] as int?,
      children: json['children'] as int?,
    );

Map<String, dynamic> _$$BookingRateImplToJson(_$BookingRateImpl instance) =>
    <String, dynamic>{
      'rateClass': instance.rateClass,
      'net': instance.net,
      'rateComments': instance.rateComments,
      'paymentType': instance.paymentType,
      'packaging': instance.packaging,
      'boardCode': instance.boardCode,
      'boardName': instance.boardName,
      'cancellationPolicies': instance.cancellationPolicies,
      'taxes': instance.taxes,
      'rooms': instance.rooms,
      'adults': instance.adults,
      'children': instance.children,
    };
