import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/config/navigation.dart';
import 'package:travelhub/core/shared_widgets/button.dart';
import 'package:travelhub/core/shared_widgets/circle_indicator.dart';
import 'package:travelhub/core/shared_widgets/snack_bar.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_strings.dart';
import 'package:travelhub/features/auth/cubit/register/register_cubit.dart';
import 'package:travelhub/features/auth/presentation/screens/login_screen.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        state.maybeWhen(
          registerCreateUserError: (errorMsg) => showSnackBar(
            context: context,
            message: errorMsg,
            color: AppColors.red,
          ),
          registerCreateUserSuccess: (user) {
            showSnackBar(
              context: context,
              message: "User created successfully",
              color: AppColors.teal,
            );
            Go.offAll(context: context, screen: const LoginScreen());
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
            registerCreateUserLoading: () => const CustomCircleIndicator(),
            orElse: () => CustomButton(
                  fillColor: AppColors.teal,
                  text: AppStrings.signUp,
                  onPressed: () {
                    bool isNameValidate = locator<RegisterCubit>()
                        .nameFormKey!
                        .currentState!
                        .validate();
                    bool isEmailValidate = locator<RegisterCubit>()
                        .emailFormKey!
                        .currentState!
                        .validate();
                    bool isPasswordValidate = locator<RegisterCubit>()
                        .passwordFormKey!
                        .currentState!
                        .validate();
                    bool isPasswordConfirmationValidate =
                        locator<RegisterCubit>()
                            .passwordConfirmationFormKey!
                            .currentState!
                            .validate();

                    bool registerValidation = isNameValidate &&
                        isEmailValidate &&
                        isPasswordValidate &&
                        isPasswordConfirmationValidate;
                    debugPrint("$registerValidation");

                    if (registerValidation) {
                      locator<RegisterCubit>().registerUser();
                    }
                  },
                ));
      },
    );
  }
}
