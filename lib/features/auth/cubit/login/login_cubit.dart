import 'package:firebase_auth/firebase_auth.dart';
import 'package:travelhub/features/auth/data/models/auth_body/body/auth_body.dart';
import 'package:travelhub/features/auth/domain/usecases/facebook_sign_in_use_case.dart';
import 'package:travelhub/features/auth/domain/usecases/google_sign_in_use_case.dart';
import 'package:travelhub/features/auth/domain/usecases/login_use_case.dart';
import 'package:travelhub/features/auth/domain/usecases/reset_password_usecase.dart';
import 'package:travelhub/features/hotels/domain/usecases/hotel_usecases.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase loginUseCase;
  final GoogleSignInUseCase googleSignInUseCase;
  final FacebookSignInUseCase facebookSignInUseCase;
  final ResetPasswordUsecase resetPasswordUsecase;
  LoginCubit({
    required this.loginUseCase,
    required this.googleSignInUseCase,
    required this.facebookSignInUseCase,
    required this.resetPasswordUsecase,
  }) : super(const LoginState.initial());

  GlobalKey<FormState>? emailFormKey;
  GlobalKey<FormState>? passwordFormKey;
  TextEditingController? emailController;
  TextEditingController? passwordController;

  void initLoginScreen() {
    emailFormKey = GlobalKey<FormState>();
    passwordFormKey = GlobalKey<FormState>();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    emit(const LoginState.initLoginScreen());
  }

  void disposeLoginScreen() {
    emailFormKey = null;
    passwordFormKey = null;
    emailController!.dispose();
    passwordController!.dispose();
    emit(const LoginState.disposeLoginScreen());
  }

  void changePasswordVisibility({required bool visible}) {
    emit(LoginState.changePasswordVisibility(!visible));
  }

  void userLogin() async {
    emit(const LoginState.userLoginLoading());
    AuthBody loginBody = AuthBody(
      email: emailController!.text,
      password: passwordController!.text,
    );
    final response = await loginUseCase.call(loginBody);
    response.fold(
      (failure) {
        debugPrint("ERROR ==> ${failure.getMessage()} ");
        emit(LoginState.userLoginError(failure.getMessage()));
      },
      (userCredential) async {
        User? user = FirebaseAuth.instance.currentUser;
        await user!.reload();
        if (user.emailVerified) {
          debugPrint("DONE =====> ");
          emit(const LoginState.userLoginSuccess());
        } else {
          emit(const LoginState.userLoginError(
              "Unverified email, please verify your email first and try again."));
        }
      },
    );
  }

  void signInWithGoogle() async {
    emit(const LoginState.userLoginLoading());
    final response = await googleSignInUseCase(NoParams());
    response.fold(
      (failure) {
        debugPrint("ERROR ==> ${failure.getMessage()} ");
        emit(LoginState.userLoginError(failure.getMessage()));
      },
      (userCredential) {
        debugPrint("DONE =====> ");
        emit(const LoginState.userLoginSuccess());
      },
    );
  }

  void signInWithFacebook() async {
    emit(const LoginState.userLoginLoading());
    final response = await facebookSignInUseCase(NoParams());
    response.fold(
      (failure) {
        debugPrint("ERROR ==> ${failure.getMessage()} ");
        emit(LoginState.userLoginError(failure.getMessage()));
      },
      (userCredential) {
        debugPrint("DONE =====> ");
        emit(const LoginState.userLoginSuccess());
      },
    );
  }

  void resetPassword({required String email}) async {
    emit(const LoginState.resetPasswordLoading());
    final response = await resetPasswordUsecase.call(email);
    response.fold(
      (failure) => emit(LoginState.resetPasswordError(failure.getMessage())),
      (result) => emit(const LoginState.resetPasswordSuccess()),
    );
  }
}
