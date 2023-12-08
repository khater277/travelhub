import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'description.freezed.dart';
part 'description.g.dart';

@HiveType(typeId: 16)
@freezed
class FacilityDescription with _$FacilityDescription {
  factory FacilityDescription({
    @HiveField(0) String? languageCode,
    @HiveField(1) String? content,
  }) = _FacilityDescription;

  factory FacilityDescription.fromJson(Map<String, dynamic> json) =>
      _$FacilityDescriptionFromJson(json);
}
