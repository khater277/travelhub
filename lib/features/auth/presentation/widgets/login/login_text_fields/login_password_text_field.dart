import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/utils/app_functions.dart';
import 'package:travelhub/core/utils/app_strings.dart';
import 'package:travelhub/features/auth/cubit/login/login_cubit.dart';
import 'package:travelhub/features/auth/presentation/widgets/text_field_with_title.dart';

class LoginPasswordTextField extends StatefulWidget {
  const LoginPasswordTextField({
    super.key,
  });

  @override
  State<LoginPasswordTextField> createState() => _LoginPasswordTextFieldState();
}

class _LoginPasswordTextFieldState extends State<LoginPasswordTextField> {
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        state.maybeWhen(
          changePasswordVisibility: (visible) => this.visible = visible,
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Form(
          key: locator<LoginCubit>().passwordFormKey,
          child: TextFieldWithTitle(
            controller: locator<LoginCubit>().passwordController!,
            formKey: locator<LoginCubit>().passwordFormKey,
            title: AppStrings.password,
            obscure: !visible,
            suffixIcon: visible ? Icons.visibility_off : Icons.visibility,
            suffixTap: () => locator<LoginCubit>()
                .changePasswordVisibility(visible: visible),
            hint: AppStrings.passwordHint,
            inputType: TextInputType.text,
            validator: (value) {
              List<bool> conditions = [value!.isEmpty];
              List<String> messages = ["can't be empty"];
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
