import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'room.dart';

part 'rooms.freezed.dart';
part 'rooms.g.dart';

@HiveType(typeId: 22)
@freezed
class Rooms with _$Rooms {
  factory Rooms({
    @HiveField(0) List<Room>? rooms,
  }) = _Rooms;

  factory Rooms.fromJson(Map<String, dynamic> json) => _$RoomsFromJson(json);
}
