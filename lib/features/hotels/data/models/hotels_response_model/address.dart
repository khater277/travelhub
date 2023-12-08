import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@HiveType(typeId: 5)
@freezed
class Address with _$Address {
  factory Address({
    @HiveField(0) String? content,
    @HiveField(1) String? street,
    @HiveField(2) String? number,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
