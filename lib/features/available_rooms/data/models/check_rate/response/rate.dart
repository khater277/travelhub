import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'cancellation_policy.dart';
import 'taxes.dart';

part 'rate.freezed.dart';
part 'rate.g.dart';

@HiveType(typeId: 43)
@freezed
class Rate with _$Rate {
  factory Rate({
    @HiveField(0) String? rateKey,
    @HiveField(1) String? rateClass,
    @HiveField(2) String? rateType,
    @HiveField(3) String? net,
    @HiveField(4) int? allotment,
    @HiveField(5) String? rateComments,
    @HiveField(6) String? paymentType,
    @HiveField(7) bool? packaging,
    @HiveField(8) String? boardCode,
    @HiveField(9) String? boardName,
    @HiveField(10) List<CancellationPolicy>? cancellationPolicies,
    @HiveField(11) Taxes? taxes,
    @HiveField(12) int? rooms,
    @HiveField(13) int? adults,
    @HiveField(14) int? children,
  }) = _Rate;

  factory Rate.fromJson(Map<String, dynamic> json) => _$RateFromJson(json);
}
