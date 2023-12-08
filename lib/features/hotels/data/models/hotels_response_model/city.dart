import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'city.freezed.dart';
part 'city.g.dart';

@HiveType(typeId: 6)
@freezed
class City with _$City {
  factory City({
    @HiveField(0) String? content,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
