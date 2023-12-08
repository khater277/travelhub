// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancellation_policy.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CancellationPolicyAdapter extends TypeAdapter<CancellationPolicy> {
  @override
  final int typeId = 53;

  @override
  CancellationPolicy read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CancellationPolicy(
      amount: fields[0] as String?,
      from: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CancellationPolicy obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.amount)
      ..writeByte(1)
      ..write(obj.from);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CancellationPolicyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CancellationPolicyImpl _$$CancellationPolicyImplFromJson(
        Map<String, dynamic> json) =>
    _$CancellationPolicyImpl(
      amount: json['amount'] as String?,
      from: json['from'] as String?,
    );

Map<String, dynamic> _$$CancellationPolicyImplToJson(
        _$CancellationPolicyImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'from': instance.from,
    };
