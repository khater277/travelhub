import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'holder.freezed.dart';
part 'holder.g.dart';

@HiveType(typeId: 48)
@freezed
class Holder with _$Holder {
  factory Holder({
    String? name,
    String? surname,
  }) = _Holder;

  factory Holder.fromJson(Map<String, dynamic> json) => _$HolderFromJson(json);
}
