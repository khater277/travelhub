// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audit_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AuditDataAdapter extends TypeAdapter<AuditData> {
  @override
  final int typeId = 27;

  @override
  AuditData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuditData(
      processTime: fields[0] as String?,
      timestamp: fields[1] as String?,
      requestHost: fields[2] as String?,
      serverId: fields[3] as String?,
      environment: fields[4] as String?,
      release: fields[5] as String?,
      token: fields[6] as String?,
      internal: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AuditData obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.processTime)
      ..writeByte(1)
      ..write(obj.timestamp)
      ..writeByte(2)
      ..write(obj.requestHost)
      ..writeByte(3)
      ..write(obj.serverId)
      ..writeByte(4)
      ..write(obj.environment)
      ..writeByte(5)
      ..write(obj.release)
      ..writeByte(6)
      ..write(obj.token)
      ..writeByte(7)
      ..write(obj.internal);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuditDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuditDataImpl _$$AuditDataImplFromJson(Map<String, dynamic> json) =>
    _$AuditDataImpl(
      processTime: json['processTime'] as String?,
      timestamp: json['timestamp'] as String?,
      requestHost: json['requestHost'] as String?,
      serverId: json['serverId'] as String?,
      environment: json['environment'] as String?,
      release: json['release'] as String?,
      token: json['token'] as String?,
      internal: json['internal'] as String?,
    );

Map<String, dynamic> _$$AuditDataImplToJson(_$AuditDataImpl instance) =>
    <String, dynamic>{
      'processTime': instance.processTime,
      'timestamp': instance.timestamp,
      'requestHost': instance.requestHost,
      'serverId': instance.serverId,
      'environment': instance.environment,
      'release': instance.release,
      'token': instance.token,
      'internal': instance.internal,
    };
