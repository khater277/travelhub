import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'rate.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@HiveType(typeId: 44)
@freezed
class RateRoom with _$RateRoom {
  factory RateRoom({
    @HiveField(0) String? code,
    @HiveField(1) String? name,
    @HiveField(2) List<Rate>? rates,
  }) = _RateRoom;

  factory RateRoom.fromJson(Map<String, dynamic> json) =>
      _$RateRoomFromJson(json);
}
