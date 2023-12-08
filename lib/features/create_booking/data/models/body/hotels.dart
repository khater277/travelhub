// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'hotels.freezed.dart';
part 'hotels.g.dart';

@HiveType(typeId: 24)
@freezed
class Hotels with _$Hotels {
  factory Hotels({
    @JsonKey(name: 'hotel') List<int>? availabilityBodyHotel,
  }) = _Hotels;

  factory Hotels.fromJson(Map<String, dynamic> json) => _$HotelsFromJson(json);
}
