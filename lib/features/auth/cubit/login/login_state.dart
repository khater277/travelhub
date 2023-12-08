part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.initLoginScreen() = _InitLoginScreen;
  const factory LoginState.disposeLoginScreen() = _DisposeLoginScreen;
  const factory LoginState.changePasswordVisibilityLoading() =
      _ChangePasswordVisibilityLoading;
  const factory LoginState.changePasswordVisibility(bool visible) =
      _ChangePasswordVisibility;
  const factory LoginState.userLoginLoading() = _UserLoginLoading;
  const factory LoginState.userLoginSuccess() = _UserLoginSuccess;
  const factory LoginState.userLoginError(String errorMsg) = _UserLoginError;
}
