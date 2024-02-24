import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/firebase/collections_keys.dart';
import 'package:travelhub/core/local_storage/keys.dart';
import 'package:travelhub/core/local_storage/user_storage.dart';
import 'package:travelhub/features/hotels/domain/usecases/hotel_usecases.dart';
import 'package:travelhub/features/profile/data/models/pofile_item_model.dart';
import 'package:travelhub/features/profile/domain/usecases/delete_account_usecase.dart';
import 'package:travelhub/features/profile/domain/usecases/re_auth_with_credential_use_case.dart';
import 'package:travelhub/features/profile/domain/usecases/update_password_usecase.dart';
import 'package:travelhub/features/profile/domain/usecases/update_profile_data_use_case.dart';
import 'package:travelhub/features/profile/domain/usecases/upload_file_use_case.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final UploadFileUseCase uploadFileUseCase;
  final UpdateProfileDataUseCase updateProfileDataUseCase;
  final UpdatePasswordUseCase updatePasswordUseCase;
  final ReAuthWithCredentialUseCase reAuthWithCredentialUseCase;
  final DeleteAccountUsecase deleteAccountUsecase;
  ProfileCubit({
    required this.uploadFileUseCase,
    required this.updateProfileDataUseCase,
    required this.updatePasswordUseCase,
    required this.reAuthWithCredentialUseCase,
    required this.deleteAccountUsecase,
  }) : super(const ProfileState.initial());

  List<ProfileItemModel> profileItemsData = [
    ProfileItemModel(name: "Change Password", icon: Icons.lock),
    ProfileItemModel(name: "Help Center", icon: Icons.info_rounded),
    ProfileItemModel(name: "Setting", icon: Icons.settings),
    ProfileItemModel(name: "Delete Account", icon: Icons.delete),
  ];

  ImagePicker picker = ImagePicker();
  File? profileImage;
  double? profileImagePercentage;
  TextEditingController? currentPasswordController;
  TextEditingController? newPasswordController;
  TextEditingController? newPasswordConfirmationController;

  void initChangePassword() {
    currentPasswordController = TextEditingController();
    newPasswordController = TextEditingController();
    newPasswordConfirmationController = TextEditingController();
    emit(const ProfileState.initChangePassword());
  }

  void disposeChangePassword() {
    currentPasswordController!.dispose();
    newPasswordController!.dispose();
    newPasswordConfirmationController!.dispose();
    emit(const ProfileState.disposeChangePassword());
  }

  void disposeEditProfile() {
    profileImage = null;
    profileImagePercentage = null;
    emit(const ProfileState.disposeEditProfile());
  }

  void changeCurrentPasswordVisibility({required bool visible}) {
    emit(ProfileState.changeCurrentPasswordVisibility(!visible));
  }

  void changeNewPasswordVisibility({required bool visible}) {
    emit(ProfileState.changeNewPasswordVisibility(!visible));
  }

  Future<void> pickProfileImage() async {
    emit(const ProfileState.pickProfileImageLoading());
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      profileImage = File(pickedFile.path);
      emit(const ProfileState.pickProfileImage());
    } else {
      debugPrint("NOT SELECTED");
      emit(const ProfileState.pickProfileImageError("NOT SELECTED"));
    }
  }

  void uploadProfileImage() async {
    emit(const ProfileState.updateProfileImageLoading());
    final response = await uploadFileUseCase.call(
      UploadFileParameters(
        collectionName: Collections.profileImages,
        file: profileImage!,
      ),
    );
    response.fold(
      (failure) {
        emit(ProfileState.updateProfileImageError(failure.getMessage()));
      },
      (result) {
        result.fold(
          (url) => updateProfileImage(image: url),
          (taskSnapshot) {
            taskSnapshot.listen((event) async {
              switch (event.state) {
                case TaskState.running:
                  profileImagePercentage =
                      event.bytesTransferred / event.totalBytes;
                  final percentage = event.bytesTransferred / event.totalBytes;
                  debugPrint("===============> $percentage");
                  emit(ProfileState.getProfileImagePercentage(percentage));
                  break;
                case TaskState.paused:
                  break;
                case TaskState.success:
                  updateProfileImage(image: await event.ref.getDownloadURL());
                  break;
                case TaskState.canceled:
                  emit(const ProfileState.updateProfileImageError(
                      "The operation has been cancelled."));
                  break;
                case TaskState.error:
                  emit(const ProfileState.updateProfileImageError(
                      "The operation has been failed."));
                  break;
              }
            });
          },
        );
      },
    );
  }

  void updateProfileImage({required String image}) async {
    final response = await updateProfileDataUseCase.call({"image": image});
    response.fold(
      (failure) =>
          emit(ProfileState.updateProfileImageError(failure.getMessage())),
      (result) {
        profileImage = null;
        profileImagePercentage = null;
        locator<UserStorage>().saveData(
            id: HiveKeys.currentUser,
            data: locator<UserStorage>()
                .getData(id: HiveKeys.currentUser)!
                .copyWith(image: image));
        emit(const ProfileState.updateProfileImage());
      },
    );
  }

  void updateMyName({required String name}) async {
    emit(const ProfileState.updateMyNameLoading());
    if (name !=
        locator<UserStorage>().getData(id: HiveKeys.currentUser)!.name) {
      final response = await updateProfileDataUseCase.call({'name': name});
      response.fold(
        (failure) => emit(ProfileState.updateMyNameError(failure.getMessage())),
        (result) {
          locator<UserStorage>().saveData(
              id: HiveKeys.currentUser,
              data: locator<UserStorage>()
                  .getData(id: HiveKeys.currentUser)!
                  .copyWith(
                    name: name,
                  ));
          emit(const ProfileState.updateMyName());
        },
      );
    }
    emit(const ProfileState.updateMyName());
  }

  void reAuthUserAndUpdatePassword() async {
    emit(const ProfileState.updatePasswordLoading());
    final response =
        await reAuthWithCredentialUseCase.call(currentPasswordController!.text);
    response.fold(
      (failure) => emit(ProfileState.updatePasswordError(failure.getMessage())),
      (userCredential) async =>
          await updatePassword(user: userCredential.user!),
    );
  }

  Future<void> updatePassword({required User user}) async {
    final response =
        await updatePasswordUseCase.call(newPasswordController!.text);
    response.fold(
      (failure) => emit(ProfileState.updatePasswordError(failure.getMessage())),
      (result) {
        currentPasswordController!.clear();
        newPasswordController!.clear();
        newPasswordConfirmationController!.clear();
        emit(const ProfileState.updatePassword());
      },
    );
  }

  void reAuthUserAndDeleteAccount({required String password}) async {
    emit(const ProfileState.deleteAccountLoading());
    final response = await reAuthWithCredentialUseCase.call(password);
    response.fold(
      (failure) => emit(ProfileState.deleteAccountError(failure.getMessage())),
      (user) async {
        final response = await deleteAccountUsecase.call(NoParams());
        response.fold(
          (failure) =>
              emit(ProfileState.deleteAccountError(failure.getMessage())),
          (result) {
            locator<UserStorage>().delete(
                id: locator<UserStorage>()
                    .getData(id: HiveKeys.currentUser)!
                    .uid!);
            emit(const ProfileState.deleteAccount());
          },
        );
      },
    );
  }
}
