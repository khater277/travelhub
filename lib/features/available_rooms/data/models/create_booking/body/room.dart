import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'pax.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@HiveType(typeId: 50)
@freezed
class BookingRoom with _$BookingRoom {
  factory BookingRoom({
    String? rateKey,
    List<Pax>? paxes,
  }) = _BookingRoom;

  factory BookingRoom.fromJson(Map<String, dynamic> json) =>
      _$BookingRoomFromJson(json);
}
