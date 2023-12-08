// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'modification_policies.dart';
import 'room.dart';

part 'hotel.freezed.dart';
part 'hotel.g.dart';

@HiveType(typeId: 41)
@freezed
class RateHotel with _$RateHotel {
  factory RateHotel({
    @HiveField(0) String? checkOut,
    @HiveField(1) String? checkIn,
    @HiveField(2) int? code,
    @HiveField(3) String? name,
    @HiveField(4) String? categoryCode,
    @HiveField(5) String? categoryName,
    @HiveField(6) String? destinationCode,
    @HiveField(7) String? destinationName,
    @HiveField(8) int? zoneCode,
    @HiveField(9) String? zoneName,
    @HiveField(10) String? latitude,
    @HiveField(11) String? longitude,
    @JsonKey(name: 'rooms') @HiveField(12) List<RateRoom>? rateRooms,
    @HiveField(13) String? totalNet,
    @HiveField(14) String? currency,
    @HiveField(15) bool? paymentDataRequired,
    @HiveField(16) ModificationPolicies? modificationPolicies,
  }) = _RateHotel;

  factory RateHotel.fromJson(Map<String, dynamic> json) =>
      _$RateHotelFromJson(json);
}
