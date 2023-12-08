import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'occupancy.freezed.dart';
part 'occupancy.g.dart';

@HiveType(typeId: 25)
@freezed
class Occupancy with _$Occupancy {
  factory Occupancy({
    int? rooms,
    int? adults,
    int? children,
  }) = _Occupancy;

  factory Occupancy.fromJson(Map<String, dynamic> json) =>
      _$OccupancyFromJson(json);
}
