// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AvailableRateAdapter extends TypeAdapter<AvailableRate> {
  @override
  final int typeId = 32;

  @override
  AvailableRate read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AvailableRate(
      rateKey: fields[0] as String?,
      rateClass: fields[1] as String?,
      rateType: fields[2] as String?,
      net: fields[3] as String?,
      allotment: fields[4] as int?,
      paymentType: fields[5] as String?,
      packaging: fields[6] as bool?,
      boardCode: fields[7] as String?,
      boardName: fields[8] as String?,
      cancellationPolicies: (fields[9] as List?)?.cast<CancellationPolicy>(),
      taxes: fields[10] as Taxes?,
      rooms: fields[11] as int?,
      adults: fields[12] as int?,
      children: fields[13] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, AvailableRate obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.rateKey)
      ..writeByte(1)
      ..write(obj.rateClass)
      ..writeByte(2)
      ..write(obj.rateType)
      ..writeByte(3)
      ..write(obj.net)
      ..writeByte(4)
      ..write(obj.allotment)
      ..writeByte(5)
      ..write(obj.paymentType)
      ..writeByte(6)
      ..write(obj.packaging)
      ..writeByte(7)
      ..write(obj.boardCode)
      ..writeByte(8)
      ..write(obj.boardName)
      ..writeByte(9)
      ..write(obj.cancellationPolicies)
      ..writeByte(10)
      ..write(obj.taxes)
      ..writeByte(11)
      ..write(obj.rooms)
      ..writeByte(12)
      ..write(obj.adults)
      ..writeByte(13)
      ..write(obj.children);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AvailableRateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvailableRateImpl _$$AvailableRateImplFromJson(Map<String, dynamic> json) =>
    _$AvailableRateImpl(
      rateKey: json['rateKey'] as String?,
      rateClass: json['rateClass'] as String?,
      rateType: json['rateType'] as String?,
      net: json['net'] as String?,
      allotment: json['allotment'] as int?,
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

Map<String, dynamic> _$$AvailableRateImplToJson(_$AvailableRateImpl instance) =>
    <String, dynamic>{
      'rateKey': instance.rateKey,
      'rateClass': instance.rateClass,
      'rateType': instance.rateType,
      'net': instance.net,
      'allotment': instance.allotment,
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
