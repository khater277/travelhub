import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'tax.freezed.dart';
part 'tax.g.dart';

@HiveType(typeId: 63)
@freezed
class Tax with _$Tax {
  factory Tax({
    @HiveField(0) bool? included,
    @HiveField(1) String? amount,
    @HiveField(2) String? currency,
    @HiveField(3) String? clientAmount,
    @HiveField(4) String? clientCurrency,
  }) = _Tax;

  factory Tax.fromJson(Map<String, dynamic> json) => _$TaxFromJson(json);
}
