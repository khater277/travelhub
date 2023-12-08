import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/utils/app_functions.dart';
import 'package:travelhub/core/utils/app_strings.dart';
import 'package:travelhub/features/auth/cubit/login/login_cubit.dart';
import 'package:travelhub/features/auth/presentation/widgets/text_field_with_title.dart';

class LoginEmailTextField extends StatelessWidget {
  const LoginEmailTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return Form(
          key: locator<LoginCubit>().emailFormKey,
          child: TextFieldWithTitle(
            controller: locator<LoginCubit>().emailController!,
            formKey: locator<LoginCubit>().emailFormKey,
            title: AppStrings.email,
            hint: AppStrings.emailHint,
            inputType: TextInputType.emailAddress,
            validator: (value) {
              List<bool> conditions = [
                value!.isEmpty,
                !EmailValidator.validate(value),
              ];
              List<String> messages = [
                "can't be empty",
                "invalid email address",
              ];
              return AppFunctions.handleTextFieldValidator(
                conditions: conditions,
                messages: messages,
              );
            },
          ),
        );
      },
    );
  }
}
