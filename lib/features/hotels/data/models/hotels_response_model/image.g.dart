// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ImageAdapter extends TypeAdapter<Image> {
  @override
  final int typeId = 12;

  @override
  Image read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Image(
      imageTypeCode: fields[0] as String?,
      path: fields[1] as String?,
      order: fields[2] as int?,
      visualOrder: fields[3] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Image obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.imageTypeCode)
      ..writeByte(1)
      ..write(obj.path)
      ..writeByte(2)
      ..write(obj.order)
      ..writeByte(3)
      ..write(obj.visualOrder);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImageAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      imageTypeCode: json['imageTypeCode'] as String?,
      path: json['path'] as String?,
      order: json['order'] as int?,
      visualOrder: json['visualOrder'] as int?,
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'imageTypeCode': instance.imageTypeCode,
      'path': instance.path,
      'order': instance.order,
      'visualOrder': instance.visualOrder,
    };
