import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/utils/app_functions.dart';
import 'package:travelhub/core/utils/app_strings.dart';
import 'package:travelhub/features/auth/cubit/register/register_cubit.dart';
import 'package:travelhub/features/auth/presentation/widgets/text_field_with_title.dart';

class RegisterNameTextField extends StatelessWidget {
  const RegisterNameTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        return Form(
          key: locator<RegisterCubit>().nameFormKey,
          child: TextFieldWithTitle(
            controller: locator<RegisterCubit>().nameController!,
            formKey: locator<RegisterCubit>().nameFormKey,
            title: AppStrings.name,
            hint: AppStrings.nameHint,
            inputType: TextInputType.text,
            validator: (value) {
              List<bool> conditions = [
                value!.isEmpty,
                value.length < 6,
              ];
              List<String> messages = [
                "can't be empty",
                "name have to be more than 5 characters",
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
