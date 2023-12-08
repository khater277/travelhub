import 'package:travelhub/features/hotels/data/models/facilities_response_model/facility_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'facilities_response_model.freezed.dart';
part 'facilities_response_model.g.dart';

@HiveType(typeId: 17)
@freezed
class FacilitiesResponseModel with _$FacilitiesResponseModel {
  factory FacilitiesResponseModel({
    @HiveField(0) List<FacilityInfo>? facilities,
  }) = _FacilitiesResponseModel;

  factory FacilitiesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$FacilitiesResponseModelFromJson(json);
}
