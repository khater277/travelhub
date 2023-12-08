// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'audit_data.dart';
import 'hotels.dart';

part 'check_availability_response.freezed.dart';
part 'check_availability_response.g.dart';

@HiveType(typeId: 29)
@freezed
class CheckAvailabilityResponse with _$CheckAvailabilityResponse {
  factory CheckAvailabilityResponse({
    @HiveField(0) AuditData? auditData,
    @JsonKey(name: 'hotels') @HiveField(1) AvailableHotels? availableHotels,
  }) = _CheckAvailabilityResponse;

  factory CheckAvailabilityResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckAvailabilityResponseFromJson(json);
}
