import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'facility.freezed.dart';
part 'facility.g.dart';

@HiveType(typeId: 9)
@freezed
class Facility with _$Facility {
  factory Facility({
    @HiveField(0) int? facilityCode,
    @HiveField(1) int? facilityGroupCode,
    @HiveField(2) int? order,
    @HiveField(3) bool? indYesOrNo,
    @HiveField(4) int? number,
    @HiveField(5) bool? voucher,
  }) = _Facility;

  factory Facility.fromJson(Map<String, dynamic> json) =>
      _$FacilityFromJson(json);
}
