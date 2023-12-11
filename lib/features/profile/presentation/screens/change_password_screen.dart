import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/shared_widgets/back_button.dart';
import 'package:travelhub/core/shared_widgets/button.dart';
import 'package:travelhub/core/shared_widgets/snack_bar.dart';
import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/profile/cubit/profile_cubit.dart';
import 'package:travelhub/features/profile/presentation/widgets/change_password_screen/new_password_confirmation_text_field.dart';
import 'package:travelhub/features/profile/presentation/widgets/change_password_screen/current_password_text_field.dart';
import 'package:travelhub/features/profile/presentation/widgets/change_password_screen/new_password_text_field.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  void initState() {
    locator<ProfileCubit>().initChangePassword();
    super.initState();
  }

  @override
  void dispose() {
    locator<ProfileCubit>().disposeChangePassword();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        centerTitle: false,
        titleSpacing: 0,
        title: const LargeHeadText(
          text: "Change Password",
          letterSpacing: 1.5,
        ),
      ),
      body: BlocListener<ProfileCubit, ProfileState>(
        listener: (context, state) {
          state.maybeWhen(
              updatePasswordError: (errorMsg) => showSnackBar(
                    context: context,
                    message: errorMsg,
                    color: Colors.red,
                  ),
              updatePassword: () => showSnackBar(
                    context: context,
                    message: "password updated successfully.",
                    color: AppColors.teal,
                  ),
              orElse: () {});
        },
        child: Center(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppWidth.w10),
          child: Align(
            alignment: AlignmentDirectional.topCenter,
            child: SingleChildScrollView(
              child: Form(
                key: key,
                child: Column(
                  children: [
                    SizedBox(height: AppHeight.h20),
                    SecondaryText(
                      text:
                          "Enter your new password and confirm your password.",
                      size: FontSize.s16,
                      isButton: true,
                      maxLines: 5,
                    ),
                    SizedBox(height: AppHeight.h50),
                    const CurrentPasswordTextField(),
                    SizedBox(height: AppHeight.h20),
                    const NewPasswordTextField(),
                    SizedBox(height: AppHeight.h20),
                    const ConfirmNewPasswordTextField(),
                    SizedBox(height: AppHeight.h50),
                    BlocBuilder<ProfileCubit, ProfileState>(
                      buildWhen: (previous, current) => current.maybeWhen(
                        updatePasswordLoading: () => true,
                        updatePasswordError: (errorMsg) => true,
                        updatePassword: () => true,
                        orElse: () => false,
                      ),
                      builder: (context, state) {
                        return CustomButton(
                          text: "Confirm",
                          loadingCondition: state ==
                              const ProfileState.updatePasswordLoading(),
                          onPressed: () {
                            if (key.currentState!.validate()) {
                              locator<ProfileCubit>()
                                  .reAuthUserAndUpdatePassword();
                            }
                          },
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        )),
      ),
    );
  }
}
