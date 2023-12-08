import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/features/auth/presentation/widgets/text_field_with_title.dart';
import 'package:travelhub/features/profile/cubit/profile_cubit.dart';

class NewPasswordTextField extends StatefulWidget {
  const NewPasswordTextField({
    super.key,
  });

  @override
  State<NewPasswordTextField> createState() => _NewPasswordTextFieldState();
}

class _NewPasswordTextFieldState extends State<NewPasswordTextField> {
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
          controller: locator<ProfileCubit>().newPasswordController!,
          title: 'New Password',
          hint: 'enter new password',
          inputType: TextInputType.text,
          onChange: (value) {},
          suffixIcon: visible ? Icons.visibility_off : Icons.visibility,
          suffixTap: () => locator<ProfileCubit>()
              .changeNewPasswordVisibility(visible: visible),
          obscure: !visible,
          validator: (p0) {
            if (locator<ProfileCubit>().newPasswordController!.text.isEmpty) {
              return "new password can't be empty";
            } else if (locator<ProfileCubit>()
                    .newPasswordController!
                    .text
                    .length <
                6) {
              return "new password can't be less than 6 characters";
            }
            return null;
          },
        );
      },
    );
  }
}
