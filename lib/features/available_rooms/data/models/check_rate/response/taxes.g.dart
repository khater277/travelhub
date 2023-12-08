// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxes.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaxesAdapter extends TypeAdapter<Taxes> {
  @override
  final int typeId = 46;

  @override
  Taxes read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Taxes(
      taxes: (fields[0] as List?)?.cast<Tax>(),
      allIncluded: fields[1] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, Taxes obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.taxes)
      ..writeByte(1)
      ..write(obj.allIncluded);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaxesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaxesImpl _$$TaxesImplFromJson(Map<String, dynamic> json) => _$TaxesImpl(
      taxes: (json['taxes'] as List<dynamic>?)
          ?.map((e) => Tax.fromJson(e as Map<String, dynamic>))
          .toList(),
      allIncluded: json['allIncluded'] as bool?,
    );

Map<String, dynamic> _$$TaxesImplToJson(_$TaxesImpl instance) =>
    <String, dynamic>{
      'taxes': instance.taxes,
      'allIncluded': instance.allIncluded,
    };
