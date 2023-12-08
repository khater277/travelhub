// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facilities_response_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FacilitiesResponseModelAdapter
    extends TypeAdapter<FacilitiesResponseModel> {
  @override
  final int typeId = 17;

  @override
  FacilitiesResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FacilitiesResponseModel(
      facilities: (fields[0] as List?)?.cast<FacilityInfo>(),
    );
  }

  @override
  void write(BinaryWriter writer, FacilitiesResponseModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.facilities);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FacilitiesResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FacilitiesResponseModelImpl _$$FacilitiesResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FacilitiesResponseModelImpl(
      facilities: (json['facilities'] as List<dynamic>?)
          ?.map((e) => FacilityInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FacilitiesResponseModelImplToJson(
        _$FacilitiesResponseModelImpl instance) =>
    <String, dynamic>{
      'facilities': instance.facilities,
    };
