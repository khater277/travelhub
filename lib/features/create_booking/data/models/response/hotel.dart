// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'room.dart';

part 'hotel.freezed.dart';
part 'hotel.g.dart';

@HiveType(typeId: 30)
@freezed
class AvailableHotel with _$AvailableHotel {
  factory AvailableHotel({
    @HiveField(0) int? code,
    @HiveField(1) String? name,
    @HiveField(2) String? categoryCode,
    @HiveField(3) String? categoryName,
    @HiveField(4) String? destinationCode,
    @HiveField(5) String? destinationName,
    @HiveField(6) int? zoneCode,
    @HiveField(7) String? zoneName,
    @HiveField(8) String? latitude,
    @HiveField(9) String? longitude,
    @JsonKey(name: 'rooms') @HiveField(10) List<AvailableRoom>? availableRooms,
    @HiveField(11) String? minRate,
    @HiveField(12) String? maxRate,
    @HiveField(13) String? currency,
  }) = _AvailableHotel;

  factory AvailableHotel.fromJson(Map<String, dynamic> json) =>
      _$AvailableHotelFromJson(json);
}
