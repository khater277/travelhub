import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'phone.freezed.dart';
part 'phone.g.dart';

@HiveType(typeId: 14)
@freezed
class Phone with _$Phone {
  factory Phone({
    @HiveField(0) String? phoneNumber,
    @HiveField(1) String? phoneType,
  }) = _Phone;

  factory Phone.fromJson(Map<String, dynamic> json) => _$PhoneFromJson(json);
}
