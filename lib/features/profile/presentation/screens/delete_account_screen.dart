import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/config/navigation.dart';
import 'package:travelhub/core/shared_widgets/alert_dialog.dart';
import 'package:travelhub/core/shared_widgets/back_button.dart';
import 'package:travelhub/core/shared_widgets/button.dart';
import 'package:travelhub/core/shared_widgets/snack_bar.dart';
import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_functions.dart';
import 'package:travelhub/core/utils/app_strings.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/auth/presentation/screens/login_screen.dart';
import 'package:travelhub/features/auth/presentation/widgets/text_field_with_title.dart';
import 'package:travelhub/features/profile/cubit/profile_cubit.dart';

class DeleteAccountScreen extends StatefulWidget {
  const DeleteAccountScreen({super.key});

  @override
  State<DeleteAccountScreen> createState() => _DeleteAccountScreenState();
}

class _DeleteAccountScreenState extends State<DeleteAccountScreen> {
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        centerTitle: false,
        titleSpacing: 0,
        title: const LargeHeadText(
          text: "Delete Account",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppWidth.w20),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFieldWithTitle(
                controller: _controller,
                formKey: _formKey,
                title: AppStrings.password,
                hint: AppStrings.passwordHint,
                inputType: TextInputType.visiblePassword,
                obscure: true,
                validator: (value) {
                  List<bool> conditions = [value!.isEmpty];
                  List<String> messages = ["can't be empty"];
                  return AppFunctions.handleTextFieldValidator(
                    conditions: conditions,
                    messages: messages,
                  );
                },
              ),
              SizedBox(height: AppHeight.h20),
              BlocConsumer<ProfileCubit, ProfileState>(
                listener: (context, state) {
                  state.maybeWhen(
                    deleteAccount: () {
                      Go.offAll(
                          context: context,
                          screen: const LoginScreen(reAuth: true));
                    },
                    deleteAccountError: (errorMsg) {
                      showSnackBar(
                        context: context,
                        message: errorMsg,
                        color: AppColors.red,
                      );
                      Go.back(context: context);
                    },
                    orElse: () {},
                  );
                },
                builder: (context, state) {
                  return CustomButton(
                    text: "Delete Account",
                    // loadingCondition: state.maybeWhen(
                    //   deleteAccountLoading: () => true,
                    //   orElse: () => false,
                    // ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        showAlertDialog(
                          context: context,
                          text: "Are you sure you want to delete your account?",
                          okPressed: () {
                            locator<ProfileCubit>().reAuthUserAndDeleteAccount(
                                password: _controller.text);
                          },
                        );
                      }
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
