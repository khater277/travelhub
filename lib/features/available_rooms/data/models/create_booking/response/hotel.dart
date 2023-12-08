// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'room.dart';
import 'supplier.dart';

part 'hotel.freezed.dart';
part 'hotel.g.dart';

@HiveType(typeId: 56)
@freezed
class BookingHotel with _$BookingHotel {
  factory BookingHotel({
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
    @JsonKey(name: 'rooms') @HiveField(12) List<BookingRoom>? bookingRooms,
    @HiveField(13) String? totalNet,
    @HiveField(14) String? currency,
    @HiveField(15) Supplier? supplier,
  }) = _BookingHotel;

  factory BookingHotel.fromJson(Map<String, dynamic> json) =>
      _$BookingHotelFromJson(json);
}
