// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'hotels.dart';
import 'occupancy.dart';
import 'stay.dart';

part 'check_availability_body.freezed.dart';
part 'check_availability_body.g.dart';

@HiveType(typeId: 23)
@freezed
class CheckAvailabilityBody with _$CheckAvailabilityBody {
  factory CheckAvailabilityBody({
    Stay? stay,
    List<Occupancy>? occupancies,
    @JsonKey(name: 'hotels') Hotels? availabilityBodyHotels,
  }) = _CheckAvailabilityBody;

  factory CheckAvailabilityBody.fromJson(Map<String, dynamic> json) =>
      _$CheckAvailabilityBodyFromJson(json);
}
