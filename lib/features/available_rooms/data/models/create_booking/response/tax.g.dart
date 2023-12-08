// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaxAdapter extends TypeAdapter<Tax> {
  @override
  final int typeId = 63;

  @override
  Tax read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Tax(
      included: fields[0] as bool?,
      amount: fields[1] as String?,
      currency: fields[2] as String?,
      clientAmount: fields[3] as String?,
      clientCurrency: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Tax obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.included)
      ..writeByte(1)
      ..write(obj.amount)
      ..writeByte(2)
      ..write(obj.currency)
      ..writeByte(3)
      ..write(obj.clientAmount)
      ..writeByte(4)
      ..write(obj.clientCurrency);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaxImpl _$$TaxImplFromJson(Map<String, dynamic> json) => _$TaxImpl(
      included: json['included'] as bool?,
      amount: json['amount'] as String?,
      currency: json['currency'] as String?,
      clientAmount: json['clientAmount'] as String?,
      clientCurrency: json['clientCurrency'] as String?,
    );

Map<String, dynamic> _$$TaxImplToJson(_$TaxImpl instance) => <String, dynamic>{
      'included': instance.included,
      'amount': instance.amount,
      'currency': instance.currency,
      'clientAmount': instance.clientAmount,
      'clientCurrency': instance.clientCurrency,
    };
