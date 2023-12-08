import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'description.freezed.dart';
part 'description.g.dart';

@HiveType(typeId: 8)
@freezed
class Description with _$Description {
  factory Description({
    @HiveField(0) String? content,
  }) = _Description;

  factory Description.fromJson(Map<String, dynamic> json) =>
      _$DescriptionFromJson(json);
}
