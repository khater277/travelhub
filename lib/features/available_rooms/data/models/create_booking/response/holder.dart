import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'holder.freezed.dart';
part 'holder.g.dart';

@HiveType(typeId: 55)
@freezed
class Holder with _$Holder {
  factory Holder({
    @HiveField(0) String? name,
    @HiveField(1) String? surname,
  }) = _Holder;

  factory Holder.fromJson(Map<String, dynamic> json) => _$HolderFromJson(json);
}
