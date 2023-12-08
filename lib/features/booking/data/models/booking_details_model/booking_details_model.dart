import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'booking_details_model.freezed.dart';
part 'booking_details_model.g.dart';

@freezed
@HiveType(typeId: 51)
class BookingDetailsModel with _$BookingDetailsModel {
  factory BookingDetailsModel({
    @HiveField(0) String? bookingId,
    @HiveField(1) int? hotelId,
    @HiveField(2) String? createdAt,
    @HiveField(3) String? firstName,
    @HiveField(4) String? lastName,
    @HiveField(5) String? checkIn,
    @HiveField(6) String? checkOut,
    @HiveField(7) int? adults,
    @HiveField(8) int? children,
    @HiveField(9) String? category,
    @HiveField(10) String? board,
    @HiveField(11) String? price,
    @HiveField(12) String? type,
  }) = _BookingDetailsModel;

  factory BookingDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$BookingDetailsModelFromJson(json);
}
