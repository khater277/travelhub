import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'coordinates.freezed.dart';
part 'coordinates.g.dart';

@HiveType(typeId: 7)
@freezed
class Coordinates with _$Coordinates {
  factory Coordinates({
    @HiveField(0) double? longitude,
    @HiveField(1) double? latitude,
  }) = _Coordinates;

  factory Coordinates.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesFromJson(json);
}
