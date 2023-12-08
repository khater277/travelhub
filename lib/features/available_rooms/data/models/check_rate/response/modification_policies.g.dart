// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modification_policies.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ModificationPoliciesAdapter extends TypeAdapter<ModificationPolicies> {
  @override
  final int typeId = 42;

  @override
  ModificationPolicies read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ModificationPolicies(
      cancellation: fields[0] as bool?,
      modification: fields[1] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, ModificationPolicies obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.cancellation)
      ..writeByte(1)
      ..write(obj.modification);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ModificationPoliciesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModificationPoliciesImpl _$$ModificationPoliciesImplFromJson(
        Map<String, dynamic> json) =>
    _$ModificationPoliciesImpl(
      cancellation: json['cancellation'] as bool?,
      modification: json['modification'] as bool?,
    );

Map<String, dynamic> _$$ModificationPoliciesImplToJson(
        _$ModificationPoliciesImpl instance) =>
    <String, dynamic>{
      'cancellation': instance.cancellation,
      'modification': instance.modification,
    };
