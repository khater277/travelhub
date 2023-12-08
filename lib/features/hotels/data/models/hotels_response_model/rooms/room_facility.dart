import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'room_facility.freezed.dart';
part 'room_facility.g.dart';

@HiveType(typeId: 18)
@freezed
class RoomFacility with _$RoomFacility {
  factory RoomFacility({
    @HiveField(0) int? facilityCode,
    @HiveField(1) int? facilityGroupCode,
    @HiveField(2) bool? indLogic,
    @HiveField(3) bool? voucher,
  }) = _RoomFacility;

  factory RoomFacility.fromJson(Map<String, dynamic> json) =>
      _$RoomFacilityFromJson(json);
}
