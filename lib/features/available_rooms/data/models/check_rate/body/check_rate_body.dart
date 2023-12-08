// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'room.dart';

part 'check_rate_body.freezed.dart';
part 'check_rate_body.g.dart';

@HiveType(typeId: 36)
@freezed
class CheckRateBody with _$CheckRateBody {
  factory CheckRateBody({
    @JsonKey(name: 'rooms') List<RateRoom>? rateRooms,
  }) = _CheckRateBody;

  factory CheckRateBody.fromJson(Map<String, dynamic> json) =>
      _$CheckRateBodyFromJson(json);
}
