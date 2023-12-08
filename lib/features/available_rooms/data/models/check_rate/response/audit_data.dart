import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'audit_data.freezed.dart';
part 'audit_data.g.dart';

@HiveType(typeId: 38)
@freezed
class AuditData with _$AuditData {
  factory AuditData({
    @HiveField(0) String? processTime,
    @HiveField(1) String? timestamp,
    @HiveField(2) String? requestHost,
    @HiveField(3) String? serverId,
    @HiveField(4) String? environment,
    @HiveField(5) String? release,
    @HiveField(6) String? token,
    @HiveField(7) String? internal,
  }) = _AuditData;

  factory AuditData.fromJson(Map<String, dynamic> json) =>
      _$AuditDataFromJson(json);
}
