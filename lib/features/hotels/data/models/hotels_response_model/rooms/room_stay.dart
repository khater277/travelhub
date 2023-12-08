import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'room_stay_facility.dart';

part 'room_stay.freezed.dart';
part 'room_stay.g.dart';

@HiveType(typeId: 20)
@freezed
class RoomStay with _$RoomStay {
  factory RoomStay({
    @HiveField(0) String? stayType,
    @HiveField(1) String? order,
    @HiveField(2) String? description,
    @HiveField(3) List<RoomStayFacility>? roomStayFacilities,
  }) = _RoomStay;

  factory RoomStay.fromJson(Map<String, dynamic> json) =>
      _$RoomStayFromJson(json);
}
