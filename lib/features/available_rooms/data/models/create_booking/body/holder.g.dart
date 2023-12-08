// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holder.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HolderAdapter extends TypeAdapter<Holder> {
  @override
  final int typeId = 48;

  @override
  Holder read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Holder();
  }

  @override
  void write(BinaryWriter writer, Holder obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HolderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HolderImpl _$$HolderImplFromJson(Map<String, dynamic> json) => _$HolderImpl(
      name: json['name'] as String?,
      surname: json['surname'] as String?,
    );

Map<String, dynamic> _$$HolderImplToJson(_$HolderImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'surname': instance.surname,
    };
