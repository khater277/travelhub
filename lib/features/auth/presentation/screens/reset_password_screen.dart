import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/config/navigation.dart';
import 'package:travelhub/core/shared_widgets/back_button.dart';
import 'package:travelhub/core/shared_widgets/button.dart';
import 'package:travelhub/core/shared_widgets/snack_bar.dart';
import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_functions.dart';
import 'package:travelhub/core/utils/app_strings.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/auth/cubit/login/login_cubit.dart';
import 'package:travelhub/features/auth/presentation/widgets/text_field_with_title.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
          text: "Reset Password",
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
              SizedBox(height: AppHeight.h20),
              BlocConsumer<LoginCubit, LoginState>(
                listener: (context, state) {
                  state.maybeWhen(
                    resetPasswordSuccess: () {
                      Go.back(context: context);
                      showSnackBar(
                        context: context,
                        message:
                            "please check your email to reset your password",
                        color: AppColors.teal,
                      );
                    },
                    resetPasswordError: (errorMsg) => showSnackBar(
                      context: context,
                      message: errorMsg,
                      color: AppColors.red,
                    ),
                    orElse: () {},
                  );
                },
                builder: (context, state) {
                  return CustomButton(
                    text: "Reset Password",
                    loadingCondition: state.maybeWhen(
                      resetPasswordLoading: () => true,
                      orElse: () => false,
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        locator<LoginCubit>()
                            .resetPassword(email: _controller.text);
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
