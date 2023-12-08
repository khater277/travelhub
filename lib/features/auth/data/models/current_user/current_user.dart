import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'current_user.freezed.dart';
part 'current_user.g.dart';

@freezed
@HiveType(typeId: 0)
class CurrentUser with _$CurrentUser {
  factory CurrentUser({
    @HiveField(0) String? uid,
    @HiveField(1) String? token,
    @HiveField(2) String? name,
    @HiveField(3) String? email,
    @HiveField(4) String? image,
  }) = _CurrentUser;

  factory CurrentUser.fromJson(Map<String, dynamic> json) =>
      _$CurrentUserFromJson(json);
}
