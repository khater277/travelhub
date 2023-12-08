import 'package:flutter/material.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/auth/presentation/widgets/login/login_text_fields/login_email_text_field.dart';
import 'package:travelhub/features/auth/presentation/widgets/login/login_text_fields/login_password_text_field.dart';

class LoginTextFields extends StatelessWidget {
  const LoginTextFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LoginEmailTextField(),
        SizedBox(height: AppHeight.h20),
        const LoginPasswordTextField(),
      ],
    );
  }
}
