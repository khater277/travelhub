import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/features/auth/presentation/widgets/text_field_with_title.dart';
import 'package:travelhub/features/profile/cubit/profile_cubit.dart';

class CurrentPasswordTextField extends StatefulWidget {
  const CurrentPasswordTextField({
    super.key,
  });

  @override
  State<CurrentPasswordTextField> createState() =>
      _CurrentPasswordTextFieldState();
}

class _CurrentPasswordTextFieldState extends State<CurrentPasswordTextField> {
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {
        state.maybeWhen(
          changeCurrentPasswordVisibility: (visible) => this.visible = visible,
          orElse: () {},
        );
      },
      builder: (context, state) {
        return TextFieldWithTitle(
          controller: locator<ProfileCubit>().currentPasswordController!,
          title: 'Current Password',
          hint: 'enter current password',
          inputType: TextInputType.text,
          onChange: (value) {},
          suffixIcon: visible ? Icons.visibility_off : Icons.visibility,
          suffixTap: () => locator<ProfileCubit>()
              .changeCurrentPasswordVisibility(visible: visible),
          obscure: !visible,
          validator: (p0) {
            if (locator<ProfileCubit>()
                .currentPasswordController!
                .text
                .isEmpty) {
              return "current password can't be empty";
            } else if (locator<ProfileCubit>()
                    .currentPasswordController!
                    .text
                    .length <
                6) {
              return "current password can't be less than 6 characters";
            }
            return null;
          },
        );
      },
    );
  }
}
