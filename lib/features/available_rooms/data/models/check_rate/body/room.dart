import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@HiveType(typeId: 37)
@freezed
class RateRoom with _$RateRoom {
  factory RateRoom({
    String? rateKey,
  }) = _RateRoom;

  factory RateRoom.fromJson(Map<String, dynamic> json) =>
      _$RateRoomFromJson(json);
}
