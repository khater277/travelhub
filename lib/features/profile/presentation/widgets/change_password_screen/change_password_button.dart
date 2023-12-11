import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/shared_widgets/button.dart';
import 'package:travelhub/features/profile/cubit/profile_cubit.dart';

class ChangePasswordButton extends StatelessWidget {
  const ChangePasswordButton({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      buildWhen: (previous, current) => current.maybeWhen(
        updatePasswordLoading: () => true,
        updatePasswordError: (errorMsg) => true,
        updatePassword: () => true,
        orElse: () => false,
      ),
      builder: (context, state) {
        return CustomButton(
          text: "Confirm",
          loadingCondition: state == const ProfileState.updatePasswordLoading(),
          onPressed: () {
            if (formKey.currentState!.validate()) {
              locator<ProfileCubit>().reAuthUserAndUpdatePassword();
            }
          },
        );
      },
    );
  }
}
