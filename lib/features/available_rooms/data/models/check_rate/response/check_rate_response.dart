// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'audit_data.dart';
import 'hotel.dart';

part 'check_rate_response.freezed.dart';
part 'check_rate_response.g.dart';

@HiveType(typeId: 40)
@freezed
class CheckRateResponse with _$CheckRateResponse {
  factory CheckRateResponse({
    @HiveField(0) AuditData? auditData,
    @JsonKey(name: 'hotel') @HiveField(1) RateHotel? rateHotel,
  }) = _CheckRateResponse;

  factory CheckRateResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckRateResponseFromJson(json);
}
