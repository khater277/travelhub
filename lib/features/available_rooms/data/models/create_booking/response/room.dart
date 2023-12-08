// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'pax.dart';
import 'rate.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@HiveType(typeId: 61)
@freezed
class BookingRoom with _$BookingRoom {
  factory BookingRoom({
    @HiveField(0) String? status,
    @HiveField(1) int? id,
    @HiveField(2) String? code,
    @HiveField(3) String? name,
    @HiveField(4) List<Pax>? paxes,
    @JsonKey(name: 'rates') @HiveField(5) List<BookingRate>? bookingRates,
  }) = _BookingRoom;

  factory BookingRoom.fromJson(Map<String, dynamic> json) =>
      _$BookingRoomFromJson(json);
}
