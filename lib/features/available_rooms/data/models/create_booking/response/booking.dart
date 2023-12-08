// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'holder.dart';
import 'hotel.dart';
import 'invoice_company.dart';
import 'modification_policies.dart';

part 'booking.freezed.dart';
part 'booking.g.dart';

@HiveType(typeId: 52)
@freezed
class Booking with _$Booking {
  factory Booking({
    @HiveField(0) String? reference,
    @HiveField(1) String? clientReference,
    @HiveField(2) String? creationDate,
    @HiveField(3) String? status,
    @HiveField(4) ModificationPolicies? modificationPolicies,
    @HiveField(5) String? creationUser,
    @HiveField(6) Holder? holder,
    @JsonKey(name: 'hotel') @HiveField(7) BookingHotel? bookingHotel,
    @HiveField(8) String? remark,
    @HiveField(9) InvoiceCompany? invoiceCompany,
    @HiveField(10) double? totalNet,
    @HiveField(11) double? pendingAmount,
    @HiveField(12) String? currency,
  }) = _Booking;

  factory Booking.fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);
}
