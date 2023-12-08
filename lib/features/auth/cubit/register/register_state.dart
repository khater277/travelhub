part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.initRegisterScreen() = InitRegisterScreen;
  const factory RegisterState.disposeRegisterScreen() = DisposeRegisterScreen;
  const factory RegisterState.changePasswordVisibilityLoading() =
      ChangePasswordVisibilityLoading;
  const factory RegisterState.changePasswordVisibility(bool visible) =
      ChangePasswordVisibility;
  const factory RegisterState.changePasswordConfIconVisibilityLoading() =
      ChangePasswordConfIconVisibilityLoading;
  const factory RegisterState.changePasswordConfIconVisibility() =
      ChangePasswordConfIconVisibility;
  const factory RegisterState.registerCreateUserLoading() =
      RegisterCreateUserLoading;
  const factory RegisterState.registerCreateUserSuccess(UserCredential user) =
      RegisterCreateUserSuccess;
  const factory RegisterState.registerCreateUserError(String errorMsg) =
      RegisterCreateUserError;
}
