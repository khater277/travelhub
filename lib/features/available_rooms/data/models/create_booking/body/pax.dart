import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'pax.freezed.dart';
part 'pax.g.dart';

@HiveType(typeId: 49)
@freezed
class Pax with _$Pax {
  factory Pax({
    int? roomId,
    String? type,
    String? name,
    String? surname,
  }) = _Pax;

  factory Pax.fromJson(Map<String, dynamic> json) => _$PaxFromJson(json);
}
