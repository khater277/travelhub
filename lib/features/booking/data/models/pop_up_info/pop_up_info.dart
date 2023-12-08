import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'pop_up_info.freezed.dart';
part 'pop_up_info.g.dart';

@freezed
@HiveType(typeId: 53)
class PopUpInfo with _$PopUpInfo {
  factory PopUpInfo({
    @HiveField(0) String? text,
    @HiveField(1) IconData? icon,
    @HiveField(2) Color? color,
  }) = _PopUpInfo;
}
