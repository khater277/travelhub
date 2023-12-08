import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'modification_policies.freezed.dart';
part 'modification_policies.g.dart';

@HiveType(typeId: 42)
@freezed
class ModificationPolicies with _$ModificationPolicies {
  factory ModificationPolicies({
    @HiveField(0) bool? cancellation,
    @HiveField(1) bool? modification,
  }) = _ModificationPolicies;

  factory ModificationPolicies.fromJson(Map<String, dynamic> json) =>
      _$ModificationPoliciesFromJson(json);
}
