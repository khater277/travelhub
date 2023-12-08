import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'name.freezed.dart';
part 'name.g.dart';

@HiveType(typeId: 13)
@freezed
class Name with _$Name {
  factory Name({
    @HiveField(0) String? content,
  }) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}
