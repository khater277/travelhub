part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.disposeEditProfile() = _DisposeEditProfile;
  const factory ProfileState.initChangePassword() = _InitChangePassword;
  const factory ProfileState.disposeChangePassword() = _DisposeChangePassword;
  const factory ProfileState.pickProfileImageLoading() =
      _pickProfileImageLoading;
  const factory ProfileState.pickProfileImage() = _pickProfileImage;
  const factory ProfileState.pickProfileImageError(String errorMsg) =
      _pickProfileImageError;
  const factory ProfileState.getProfileImagePercentage(double percentage) =
      _GetProfileImagePercentage;
  const factory ProfileState.updateProfileImageLoading() =
      _UpdateProfileImageLoading;
  const factory ProfileState.updateProfileImage() = _UpdateProfileImage;
  const factory ProfileState.updateProfileImageError(String errorMsg) =
      _UpdateProfileImageError;
  const factory ProfileState.updateMyNameLoading() = _UpdateMyNameLoading;
  const factory ProfileState.updateMyName() = _UpdateMyName;
  const factory ProfileState.updateMyNameError(String errorMsg) =
      _UpdateMyNameError;
  const factory ProfileState.updatePasswordLoading() = _UpdatePasswordLoading;
  const factory ProfileState.updatePassword() = _UpdatePassword;
  const factory ProfileState.updatePasswordError(String errorMsg) =
      _UpdatePasswordError;
  const factory ProfileState.changeCurrentPasswordVisibility(bool visible) =
      _ChangeCurrentPasswordVisibility;
  const factory ProfileState.changeNewPasswordVisibility(bool visible) =
      _ChangeNewPasswordVisibility;
  const factory ProfileState.deleteAccountLoading() = _DeleteAccountLoading;
  const factory ProfileState.deleteAccount() = _DeleteAccount;
  const factory ProfileState.deleteAccountError(String errorMsg) =
      _DeleteAccountError;
}
