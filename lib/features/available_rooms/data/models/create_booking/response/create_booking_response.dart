import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'audit_data.dart';
import 'booking.dart';

part 'create_booking_response.freezed.dart';
part 'create_booking_response.g.dart';

@HiveType(typeId: 54)
@freezed
class CreateBookingResponse with _$CreateBookingResponse {
  factory CreateBookingResponse({
    @HiveField(0) AuditData? auditData,
    @HiveField(1) Booking? booking,
  }) = _CreateBookingResponse;

  factory CreateBookingResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateBookingResponseFromJson(json);
}
