import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'invoice_company.freezed.dart';
part 'invoice_company.g.dart';

@HiveType(typeId: 57)
@freezed
class InvoiceCompany with _$InvoiceCompany {
  factory InvoiceCompany({
    @HiveField(0) String? code,
    @HiveField(1) String? company,
    @HiveField(2) String? registrationNumber,
  }) = _InvoiceCompany;

  factory InvoiceCompany.fromJson(Map<String, dynamic> json) =>
      _$InvoiceCompanyFromJson(json);
}
