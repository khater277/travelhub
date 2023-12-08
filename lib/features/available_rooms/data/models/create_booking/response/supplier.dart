import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'supplier.freezed.dart';
part 'supplier.g.dart';

@HiveType(typeId: 62)
@freezed
class Supplier with _$Supplier {
  factory Supplier({
    @HiveField(0) String? name,
    @HiveField(1) String? vatNumber,
  }) = _Supplier;

  factory Supplier.fromJson(Map<String, dynamic> json) =>
      _$SupplierFromJson(json);
}
