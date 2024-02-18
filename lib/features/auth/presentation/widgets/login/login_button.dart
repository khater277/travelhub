import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/config/navigation.dart';
import 'package:travelhub/core/shared_widgets/button.dart';
import 'package:travelhub/core/shared_widgets/circle_indicator.dart';
import 'package:travelhub/core/shared_widgets/snack_bar.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_strings.dart';
import 'package:travelhub/features/auth/cubit/login/login_cubit.dart';
import 'package:travelhub/features/home/presentation/screens/home_screen.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        state.maybeWhen(
          userLoginError: (errorMsg) => showSnackBar(
            context: context,
            message: errorMsg,
            color: AppColors.red,
          ),
          userLoginSuccess: () =>
              Go.offAll(context: context, screen: const HomeScreen()),
          orElse: () {},
        );
      },
      buildWhen: (previous, current) => current.maybeWhen(
        userLoginLoading: () => true,
        userLoginError: (errorMsg) => true,
        orElse: () => false,
      ),
      builder: (context, state) {
        return state.maybeWhen(
          userLoginLoading: () => const CustomCircleIndicator(),
          orElse: () => CustomButton(
            fillColor: AppColors.teal,
            text: AppStrings.login,
            onPressed: () async {
              bool emailValidation =
                  locator<LoginCubit>().emailFormKey!.currentState!.validate();
              bool passwordValidation = locator<LoginCubit>()
                  .passwordFormKey!
                  .currentState!
                  .validate();
              if (emailValidation && passwordValidation) {
                locator<LoginCubit>().userLogin();
                // User? user = FirebaseAuth.instance.currentUser;
                // if (user == null ||
                //     user.email != locator<LoginCubit>().emailController!.text) {
                //   await FirebaseAuth.instance.signOut();
                //   await FirebaseAuth.instance.signInWithEmailAndPassword(
                //     email: locator<LoginCubit>().emailController!.text,
                //     password: locator<LoginCubit>().passwordController!.text,
                //   );
                //   user = FirebaseAuth.instance.currentUser!;
                // }
                // await user.reload();
                // final response = user.email;
                // print("=======>$response");
              }
            },
          ),
        );
      },
    );
  }
}
