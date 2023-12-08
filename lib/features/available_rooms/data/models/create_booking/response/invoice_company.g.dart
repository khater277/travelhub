// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_company.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InvoiceCompanyAdapter extends TypeAdapter<InvoiceCompany> {
  @override
  final int typeId = 57;

  @override
  InvoiceCompany read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return InvoiceCompany(
      code: fields[0] as String?,
      company: fields[1] as String?,
      registrationNumber: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, InvoiceCompany obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.code)
      ..writeByte(1)
      ..write(obj.company)
      ..writeByte(2)
      ..write(obj.registrationNumber);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InvoiceCompanyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceCompanyImpl _$$InvoiceCompanyImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceCompanyImpl(
      code: json['code'] as String?,
      company: json['company'] as String?,
      registrationNumber: json['registrationNumber'] as String?,
    );

Map<String, dynamic> _$$InvoiceCompanyImplToJson(
        _$InvoiceCompanyImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'company': instance.company,
      'registrationNumber': instance.registrationNumber,
    };
