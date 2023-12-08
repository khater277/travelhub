import 'package:flutter/material.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/auth/presentation/widgets/register/register_text_fields/register_email_text_field.dart';
import 'package:travelhub/features/auth/presentation/widgets/register/register_text_fields/register_name_text_field.dart';
import 'package:travelhub/features/auth/presentation/widgets/register/register_text_fields/register_password_confirmation.dart';
import 'package:travelhub/features/auth/presentation/widgets/register/register_text_fields/register_password_text_field.dart';

class RegisterTextFields extends StatelessWidget {
  const RegisterTextFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RegisterNameTextField(),
        SizedBox(height: AppHeight.h20),
        const RegisterEmailTextField(),
        SizedBox(height: AppHeight.h20),
        const RegisterPasswordTextField(),
        SizedBox(height: AppHeight.h20),
        const RegisterPasswordConfirmationTextField(),
      ],
    );
  }
}
