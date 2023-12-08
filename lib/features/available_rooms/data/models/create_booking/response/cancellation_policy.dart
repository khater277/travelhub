import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'cancellation_policy.freezed.dart';
part 'cancellation_policy.g.dart';

@HiveType(typeId: 53)
@freezed
class CancellationPolicy with _$CancellationPolicy {
  factory CancellationPolicy({
    @HiveField(0) String? amount,
    @HiveField(1) String? from,
  }) = _CancellationPolicy;

  factory CancellationPolicy.fromJson(Map<String, dynamic> json) =>
      _$CancellationPolicyFromJson(json);
}
