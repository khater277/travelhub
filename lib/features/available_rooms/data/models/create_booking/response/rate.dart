import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'cancellation_policy.dart';
import 'taxes.dart';

part 'rate.freezed.dart';
part 'rate.g.dart';

@HiveType(typeId: 60)
@freezed
class BookingRate with _$BookingRate {
  factory BookingRate({
    @HiveField(0) String? rateClass,
    @HiveField(1) String? net,
    @HiveField(2) String? rateComments,
    @HiveField(3) String? paymentType,
    @HiveField(4) bool? packaging,
    @HiveField(5) String? boardCode,
    @HiveField(6) String? boardName,
    @HiveField(7) List<CancellationPolicy>? cancellationPolicies,
    @HiveField(8) Taxes? taxes,
    @HiveField(9) int? rooms,
    @HiveField(10) int? adults,
    @HiveField(11) int? children,
  }) = _BookingRate;

  factory BookingRate.fromJson(Map<String, dynamic> json) =>
      _$BookingRateFromJson(json);
}
