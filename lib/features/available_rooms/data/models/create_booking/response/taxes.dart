import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'tax.dart';

part 'taxes.freezed.dart';
part 'taxes.g.dart';

@HiveType(typeId: 64)
@freezed
class Taxes with _$Taxes {
  factory Taxes({
    @HiveField(0) List<Tax>? taxes,
    @HiveField(1) bool? allIncluded,
  }) = _Taxes;

  factory Taxes.fromJson(Map<String, dynamic> json) => _$TaxesFromJson(json);
}
