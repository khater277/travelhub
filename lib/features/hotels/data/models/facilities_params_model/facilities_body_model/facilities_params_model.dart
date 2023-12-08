import 'package:freezed_annotation/freezed_annotation.dart';

part 'facilities_params_model.freezed.dart';
part 'facilities_params_model.g.dart';

@freezed
class FacilitiesParamsModel with _$FacilitiesParamsModel {
  factory FacilitiesParamsModel({
    String? fields,
    String? from,
    String? to,
  }) = _FacilitiesParamsModel;

  factory FacilitiesParamsModel.fromJson(Map<String, dynamic> json) =>
      _$FacilitiesParamsModelFromJson(json);
}
