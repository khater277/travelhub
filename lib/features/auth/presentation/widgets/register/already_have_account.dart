import 'package:travelhub/config/navigation.dart';
import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:travelhub/core/utils/app_strings.dart';
import 'package:travelhub/features/auth/presentation/screens/register_screen.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SecondaryText(
          text: AppStrings.haveAnAccount,
          isLight: true,
          center: true,
          size: FontSize.s13,
          isEllipsis: false,
        ),
        TextButton(
          onPressed: () {
            Go.offAll(context: context, screen: const RegisterScreen());
          },
          child: const TealText(
            text: AppStrings.signUp,
          ),
        ),
      ],
    );
  }
}
