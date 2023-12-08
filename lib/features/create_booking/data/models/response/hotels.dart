// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'hotel.dart';

part 'hotels.freezed.dart';
part 'hotels.g.dart';

@HiveType(typeId: 31)
@freezed
class AvailableHotels with _$AvailableHotels {
  factory AvailableHotels({
    @JsonKey(name: 'hotels')
    @HiveField(0)
        List<AvailableHotel>? availableHotels,
    @HiveField(1) String? checkIn,
    @HiveField(2) int? total,
    @HiveField(3) String? checkOut,
  }) = _AvailableHotels;

  factory AvailableHotels.fromJson(Map<String, dynamic> json) =>
      _$AvailableHotelsFromJson(json);
}
