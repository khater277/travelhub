// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stay.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StayAdapter extends TypeAdapter<Stay> {
  @override
  final int typeId = 26;

  @override
  Stay read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Stay();
  }

  @override
  void write(BinaryWriter writer, Stay obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StayAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StayImpl _$$StayImplFromJson(Map<String, dynamic> json) => _$StayImpl(
      checkIn: json['checkIn'] as String?,
      checkOut: json['checkOut'] as String?,
    );

Map<String, dynamic> _$$StayImplToJson(_$StayImpl instance) =>
    <String, dynamic>{
      'checkIn': instance.checkIn,
      'checkOut': instance.checkOut,
    };
