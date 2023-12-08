import 'package:travelhub/features/auth/data/models/auth_body/body/auth_body.dart';
import 'package:travelhub/features/auth/domain/usecases/register_use_case.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterUseCase registerUseCase;
  RegisterCubit({required this.registerUseCase})
      : super(const RegisterState.initial());

  GlobalKey<FormState>? nameFormKey;
  GlobalKey<FormState>? emailFormKey;
  GlobalKey<FormState>? passwordFormKey;
  GlobalKey<FormState>? passwordConfirmationFormKey;
  TextEditingController? nameController;
  TextEditingController? emailController;
  TextEditingController? passwordController;
  TextEditingController? passwordConfirmationController;

  void initRegisterScreen() {
    nameFormKey = GlobalKey<FormState>();
    emailFormKey = GlobalKey<FormState>();
    passwordFormKey = GlobalKey<FormState>();
    passwordConfirmationFormKey = GlobalKey<FormState>();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    passwordConfirmationController = TextEditingController();
    emit(const RegisterState.initRegisterScreen());
  }

  void disposeRegisterScreen() {
    nameFormKey = null;
    emailFormKey = null;
    passwordFormKey = null;
    passwordConfirmationFormKey = null;
    nameController!.dispose();
    emailController!.dispose();
    passwordController!.dispose();
    passwordConfirmationController!.dispose();
    emit(const RegisterState.disposeRegisterScreen());
  }

  void changePasswordVisibility({required bool visible}) {
    emit(RegisterState.changePasswordVisibility(!visible));
  }

  void registerUser() async {
    emit(const RegisterState.registerCreateUserLoading());
    final response = await registerUseCase.call(AuthBody(
      name: nameController!.text,
      email: emailController!.text,
      password: passwordController!.text,
    ));
    response.fold(
      (failure) =>
          emit(RegisterState.registerCreateUserError(failure.getMessage())),
      (user) => emit(RegisterState.registerCreateUserSuccess(user)),
    );
  }
}
