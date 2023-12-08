import 'package:flutter/material.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_strings.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/auth/cubit/register/register_cubit.dart';
import 'package:travelhub/features/auth/presentation/widgets/register/accept_terms_text.dart';
import 'package:travelhub/features/auth/presentation/widgets/auth_head.dart';
import 'package:travelhub/features/auth/presentation/widgets/login/google_facebook_sign_in.dart';
import 'package:travelhub/features/auth/presentation/widgets/login/not_have_account.dart';
import 'package:travelhub/features/auth/presentation/widgets/register/register_text_fields/register_text_fields.dart';
import 'package:travelhub/features/auth/presentation/widgets/register/sign_up_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  void initState() {
    locator<RegisterCubit>().initRegisterScreen();
    super.initState();
  }

  @override
  void dispose() {
    locator<RegisterCubit>().disposeRegisterScreen();
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
                const AuthHead(title: AppStrings.signUp),
                SizedBox(height: AppHeight.h30),
                const GoogleFacebookSignIn(),
                SizedBox(height: AppHeight.h20),
                const SecondaryText(
                  text: AppStrings.logWithEmail,
                  isLight: true,
                ),
                SizedBox(height: AppHeight.h20),
                const RegisterTextFields(),
                SizedBox(height: AppHeight.h20),
                const SignUpButton(),
                SizedBox(height: AppHeight.h20),
                const AcceptTermsText(),
                SizedBox(height: AppHeight.h10),
                const NotHaveAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
