import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'description.dart';

part 'facility_info.freezed.dart';
part 'facility_info.g.dart';

@HiveType(typeId: 15)
@freezed
class FacilityInfo with _$FacilityInfo {
  factory FacilityInfo({
    @HiveField(0) int? code,
    @HiveField(1) int? facilityGroupCode,
    @HiveField(2) int? facilityTypologyCode,
    @HiveField(3) FacilityDescription? description,
  }) = _FacilityInfo;

  factory FacilityInfo.fromJson(Map<String, dynamic> json) =>
      _$FacilityInfoFromJson(json);
}
