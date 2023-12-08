import 'package:freezed_annotation/freezed_annotation.dart';
part 'hotels_params_model.freezed.dart';
part 'hotels_params_model.g.dart';

@freezed
class HotelsParamsModel with _$HotelsParamsModel {
  const factory HotelsParamsModel({
    List<int>? codes,
    String? countryCode,
    int? from,
    int? to,
    String? language,
  }) = _HotelsParamsModel;

  factory HotelsParamsModel.fromJson(Map<String, dynamic> json) =>
      _$HotelsParamsModelFromJson(json);
}
