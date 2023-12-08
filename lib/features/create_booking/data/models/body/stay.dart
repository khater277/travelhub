import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'stay.freezed.dart';
part 'stay.g.dart';

@HiveType(typeId: 26)
@freezed
class Stay with _$Stay {
  factory Stay({
    String? checkIn,
    String? checkOut,
  }) = _Stay;

  factory Stay.fromJson(Map<String, dynamic> json) => _$StayFromJson(json);
}
