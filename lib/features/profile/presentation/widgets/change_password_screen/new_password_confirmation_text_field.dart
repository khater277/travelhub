import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/utils/app_functions.dart';
import 'package:travelhub/features/auth/presentation/widgets/text_field_with_title.dart';
import 'package:travelhub/features/profile/cubit/profile_cubit.dart';

class ConfirmNewPasswordTextField extends StatefulWidget {
  const ConfirmNewPasswordTextField({
    super.key,
  });

  @override
  State<ConfirmNewPasswordTextField> createState() =>
      _ConfirmNewPasswordTextFieldState();
}

class _ConfirmNewPasswordTextFieldState
    extends State<ConfirmNewPasswordTextField> {
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {
        state.maybeWhen(
          changeNewPasswordVisibility: (visible) => this.visible = visible,
          orElse: () {},
        );
      },
      builder: (context, state) {
        return TextFieldWithTitle(
          controller:
              locator<ProfileCubit>().newPasswordConfirmationController!,
          title: 'Confirm Password',
          hint: 'enter confirm password',
          inputType: TextInputType.text,
          onChange: (value) {},
          suffixIcon: visible ? Icons.visibility_off : Icons.visibility,
          suffixTap: () => locator<ProfileCubit>()
              .changeNewPasswordVisibility(visible: visible),
          obscure: !visible,
          validator: (p0) {
            List<bool> conditions = [
              locator<ProfileCubit>().newPasswordController!.text.isEmpty,
              locator<ProfileCubit>().newPasswordController!.text !=
                  locator<ProfileCubit>()
                      .newPasswordConfirmationController!
                      .text,
            ];
            List<String> messages = [
              "confirm password can't be empty",
              "new password and confirm password is not matched.",
            ];
            return AppFunctions.handleTextFieldValidator(
                conditions: conditions, messages: messages);
          },
        );
      },
    );
  }
}
