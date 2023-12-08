import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'room_stay_facility.freezed.dart';
part 'room_stay_facility.g.dart';

@HiveType(typeId: 19)
@freezed
class RoomStayFacility with _$RoomStayFacility {
  factory RoomStayFacility({
    @HiveField(0) int? facilityCode,
    @HiveField(1) int? facilityGroupCode,
    @HiveField(2) int? number,
  }) = _RoomStayFacility;

  factory RoomStayFacility.fromJson(Map<String, dynamic> json) =>
      _$RoomStayFacilityFromJson(json);
}
