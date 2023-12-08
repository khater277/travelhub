import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/utils/app_functions.dart';
import 'package:travelhub/core/utils/app_strings.dart';
import 'package:travelhub/features/auth/cubit/register/register_cubit.dart';
import 'package:travelhub/features/auth/presentation/widgets/text_field_with_title.dart';
import 'package:flutter/material.dart';

class RegisterPasswordConfirmationTextField extends StatefulWidget {
  const RegisterPasswordConfirmationTextField({
    super.key,
  });

  @override
  State<RegisterPasswordConfirmationTextField> createState() =>
      _RegisterPasswordConfirmationTextFieldState();
}

class _RegisterPasswordConfirmationTextFieldState
    extends State<RegisterPasswordConfirmationTextField> {
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
          key: locator<RegisterCubit>().passwordConfirmationFormKey,
          child: TextFieldWithTitle(
            controller:
                locator<RegisterCubit>().passwordConfirmationController!,
            formKey: locator<RegisterCubit>().passwordConfirmationFormKey,
            title: AppStrings.passwordConfirmation,
            hint: AppStrings.passwordConfirmationHint,
            inputType: TextInputType.text,
            obscure: !visible,
            suffixIcon: visible ? Icons.visibility_off : Icons.visibility,
            suffixTap: () => locator<RegisterCubit>()
                .changePasswordVisibility(visible: visible),
            onChange: (value) {
              locator<RegisterCubit>()
                  .passwordConfirmationFormKey!
                  .currentState!
                  .validate();
              locator<RegisterCubit>()
                  .changePasswordVisibility(visible: !visible);
            },
            validator: (value) {
              List<bool> conditions = [
                value!.isEmpty,
                value != locator<RegisterCubit>().passwordController!.text,
              ];
              List<String> messages = [
                "can't be empty",
                "not matching with password",
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
