// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NameAdapter extends TypeAdapter<Name> {
  @override
  final int typeId = 13;

  @override
  Name read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Name(
      content: fields[0] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Name obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.content);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NameAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NameImpl _$$NameImplFromJson(Map<String, dynamic> json) => _$NameImpl(
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$NameImplToJson(_$NameImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
    };
