import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_body.freezed.dart';
part 'auth_body.g.dart';

@freezed
class AuthBody with _$AuthBody {
  const factory AuthBody({
    String? name,
    required String email,
    required String password,
  }) = _AuthBody;

  factory AuthBody.fromJson(Map<String, Object?> json) =>
      _$AuthBodyFromJson(json);
}
