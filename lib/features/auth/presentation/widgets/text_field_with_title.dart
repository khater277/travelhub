import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/shared_widgets/text_form_field.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:flutter/material.dart';

class TextFieldWithTitle extends StatelessWidget {
  final TextEditingController controller;

  final String title;
  final String hint;
  final TextInputType inputType;
  final bool obscure;
  final IconData? suffixIcon;
  final void Function()? suffixTap;
  final String validateText;
  final String? Function(String?)? validator;
  final GlobalKey<FormState>? formKey;
  final ValueChanged<String>? onChange;
  const TextFieldWithTitle({
    super.key,
    required this.controller,
    required this.title,
    required this.hint,
    this.validateText = "This Field is required",
    required this.inputType,
    this.obscure = false,
    this.suffixIcon,
    this.validator,
    this.formKey,
    this.suffixTap,
    this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppWidth.w5),
          child: SecondaryText(text: title, isLight: true),
        ),
        SizedBox(height: AppHeight.h3),
        CustomTextField(
          hintText: hint,
          validatorText: validateText,
          controller: controller,
          inputType: inputType,
          obscureText: obscure,
          suffixIcon: suffixIcon,
          suffixTap: suffixTap,
          onChange: onChange ?? (value) => formKey!.currentState!.validate(),
          validator: validator,
        ),
      ],
    );
  }
}

void printTest(isChanged, function) {
  if (isChanged) {
    function;
  } else {
    debugPrint("NULL");
  }
}
