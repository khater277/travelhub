// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'room_facility.dart';
import 'room_stay.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@HiveType(typeId: 21)
@freezed
class Room with _$Room {
  factory Room({
    @HiveField(0) String? roomCode,
    @HiveField(1) bool? isParentRoom,
    @HiveField(2) int? minPax,
    @HiveField(3) int? maxPax,
    @HiveField(4) int? maxAdults,
    @HiveField(5) int? maxChildren,
    @HiveField(6) int? minAdults,
    @HiveField(7) String? roomType,
    @HiveField(8) String? characteristicCode,
    @HiveField(9) List<RoomFacility>? roomFacilities,
    @HiveField(10) List<RoomStay>? roomStays,
    @JsonKey(name: 'PMSRoomCode') String? pmsRoomCode,
  }) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}
