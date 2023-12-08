import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'pax.freezed.dart';
part 'pax.g.dart';

@HiveType(typeId: 59)
@freezed
class Pax with _$Pax {
  factory Pax({
    @HiveField(0) int? roomId,
    @HiveField(1) String? type,
    @HiveField(2) String? name,
    @HiveField(3) String? surname,
  }) = _Pax;

  factory Pax.fromJson(Map<String, dynamic> json) => _$PaxFromJson(json);
}
