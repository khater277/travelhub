import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'image.freezed.dart';
part 'image.g.dart';

@HiveType(typeId: 12)
@freezed
class Image with _$Image {
  factory Image({
    @HiveField(0) String? imageTypeCode,
    @HiveField(1) String? path,
    @HiveField(2) int? order,
    @HiveField(3) int? visualOrder,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}
