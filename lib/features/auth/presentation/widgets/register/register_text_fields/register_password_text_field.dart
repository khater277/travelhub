import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/utils/app_functions.dart';
import 'package:travelhub/core/utils/app_strings.dart';
import 'package:travelhub/features/auth/cubit/register/register_cubit.dart';
import 'package:travelhub/features/auth/presentation/widgets/text_field_with_title.dart';
import 'package:flutter/material.dart';

class RegisterPasswordTextField extends StatefulWidget {
  const RegisterPasswordTextField({
    super.key,
  });

  @override
  State<RegisterPasswordTextField> createState() =>
      _RegisterPasswordTextFieldState();
}

class _RegisterPasswordTextFieldState extends State<RegisterPasswordTextField> {
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        state.maybeWhen(
          changePasswordVisibility: (visible) => this.visible = visible,
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Form(
          key: locator<RegisterCubit>().passwordFormKey,
          child: TextFieldWithTitle(
            controller: locator<RegisterCubit>().passwordController!,
            formKey: locator<RegisterCubit>().passwordFormKey,
            title: AppStrings.password,
            hint: AppStrings.passwordHint,
            inputType: TextInputType.text,
            obscure: !visible,
            suffixIcon: visible ? Icons.visibility_off : Icons.visibility,
            suffixTap: () => locator<RegisterCubit>()
                .changePasswordVisibility(visible: visible),
            validator: (value) {
              List<bool> conditions = [
                value!.isEmpty,
                value.length < 6,
              ];
              List<String> messages = [
                "can't be empty",
                "password must be more than 6",
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
