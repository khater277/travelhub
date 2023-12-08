import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'cancellation_policy.dart';
import 'taxes.dart';

part 'rate.freezed.dart';
part 'rate.g.dart';

@HiveType(typeId: 32)
@freezed
class AvailableRate with _$AvailableRate {
  factory AvailableRate({
    @HiveField(0) String? rateKey,
    @HiveField(1) String? rateClass,
    @HiveField(2) String? rateType,
    @HiveField(3) String? net,
    @HiveField(4) int? allotment,
    @HiveField(5) String? paymentType,
    @HiveField(6) bool? packaging,
    @HiveField(7) String? boardCode,
    @HiveField(8) String? boardName,
    @HiveField(9) List<CancellationPolicy>? cancellationPolicies,
    @HiveField(10) Taxes? taxes,
    @HiveField(11) int? rooms,
    @HiveField(12) int? adults,
    @HiveField(13) int? children,
  }) = _AvailableRate;

  factory AvailableRate.fromJson(Map<String, dynamic> json) =>
      _$AvailableRateFromJson(json);
}
