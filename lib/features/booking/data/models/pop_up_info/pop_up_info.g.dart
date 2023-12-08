// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pop_up_info.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PopUpInfoAdapter extends TypeAdapter<PopUpInfo> {
  @override
  final int typeId = 53;

  @override
  PopUpInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PopUpInfo(
      text: fields[0] as String?,
      icon: fields[1] as IconData?,
      color: fields[2] as Color?,
    );
  }

  @override
  void write(BinaryWriter writer, PopUpInfo obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.text)
      ..writeByte(1)
      ..write(obj.icon)
      ..writeByte(2)
      ..write(obj.color);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PopUpInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
