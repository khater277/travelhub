// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'rate.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@HiveType(typeId: 33)
@freezed
class AvailableRoom with _$AvailableRoom {
  factory AvailableRoom({
    @HiveField(0) String? code,
    @HiveField(1) String? name,
    @JsonKey(name: 'rates') @HiveField(2) List<AvailableRate>? availableRates,
  }) = _AvailableRoom;

  factory AvailableRoom.fromJson(Map<String, dynamic> json) =>
      _$AvailableRoomFromJson(json);
}
