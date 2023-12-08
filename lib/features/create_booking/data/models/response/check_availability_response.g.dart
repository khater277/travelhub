// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_availability_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CheckAvailabilityResponseAdapter
    extends TypeAdapter<CheckAvailabilityResponse> {
  @override
  final int typeId = 29;

  @override
  CheckAvailabilityResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CheckAvailabilityResponse(
      auditData: fields[0] as AuditData?,
      availableHotels: fields[1] as AvailableHotels?,
    );
  }

  @override
  void write(BinaryWriter writer, CheckAvailabilityResponse obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.auditData)
      ..writeByte(1)
      ..write(obj.availableHotels);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CheckAvailabilityResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckAvailabilityResponseImpl _$$CheckAvailabilityResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckAvailabilityResponseImpl(
      auditData: json['auditData'] == null
          ? null
          : AuditData.fromJson(json['auditData'] as Map<String, dynamic>),
      availableHotels: json['hotels'] == null
          ? null
          : AvailableHotels.fromJson(json['hotels'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CheckAvailabilityResponseImplToJson(
        _$CheckAvailabilityResponseImpl instance) =>
    <String, dynamic>{
      'auditData': instance.auditData,
      'hotels': instance.availableHotels,
    };
