// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'holder.dart';
import 'room.dart';

part 'create_booking_body.freezed.dart';
part 'create_booking_body.g.dart';

@HiveType(typeId: 47)
@freezed
class CreateBookingBody with _$CreateBookingBody {
  factory CreateBookingBody({
    Holder? holder,
    @JsonKey(name: 'rooms') List<BookingRoom>? bookingRooms,
    String? clientReference,
    String? remark,
    int? tolerance,
  }) = _CreateBookingBody;

  factory CreateBookingBody.fromJson(Map<String, dynamic> json) =>
      _$CreateBookingBodyFromJson(json);
}
