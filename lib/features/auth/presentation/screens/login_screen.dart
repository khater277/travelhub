import 'package:flutter/material.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/config/navigation.dart';
import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:travelhub/core/utils/app_strings.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/auth/cubit/login/login_cubit.dart';
import 'package:travelhub/features/auth/presentation/screens/reset_password_screen.dart';
import 'package:travelhub/features/auth/presentation/widgets/register/accept_terms_text.dart';
import 'package:travelhub/features/auth/presentation/widgets/register/already_have_account.dart';
import 'package:travelhub/features/auth/presentation/widgets/auth_head.dart';
import 'package:travelhub/features/auth/presentation/widgets/login/google_facebook_sign_in.dart';
import 'package:travelhub/features/auth/presentation/widgets/login/login_button.dart';
import 'package:travelhub/features/auth/presentation/widgets/login/login_text_fields/login_text_fields.dart';

class LoginScreen extends StatefulWidget {
  final bool reAuth;
  const LoginScreen({super.key, this.reAuth = false});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    locator<LoginCubit>().initLoginScreen();
    super.initState();
  }

  @override
  void dispose() {
    locator<LoginCubit>().disposeLoginScreen();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(AppSize.s20).add(
              EdgeInsets.only(top: AppHeight.h60),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AuthHead(title: AppStrings.login),
                SizedBox(height: AppHeight.h30),
                const GoogleFacebookSignIn(),
                SizedBox(height: AppHeight.h20),
                const SecondaryText(
                  text: AppStrings.logWithEmail,
                  isLight: true,
                ),
                SizedBox(height: AppHeight.h30),
                const LoginTextFields(),
                SizedBox(height: AppHeight.h20),
                GestureDetector(
                  onTap: () => Go.to(
                    context: context,
                    screen: const ResetPasswordScreen(),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: SecondaryText(
                      text: AppStrings.forgotPassword,
                      isLight: true,
                      size: FontSize.s12,
                      // isButton: true,
                    ),
                  ),
                ),
                SizedBox(height: AppHeight.h10),
                LoginButton(
                  reAuth: widget.reAuth,
                ),
                SizedBox(height: AppHeight.h20),
                const AcceptTermsText(),
                const AlreadyHaveAnAccount()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
