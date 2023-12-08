import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/core/utils/font_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final bool readOnly;
  final int? maxlength;
  final String? validatorText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final void Function()? suffixTap;
  final ValueChanged<String>? onChange;
  final ValueChanged<String>? onFelidSubmitted;
  final void Function()? onTap;
  final TextEditingController controller;
  final TextInputType inputType;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxlength,
    this.obscureText = false,
    this.readOnly = false,
    required this.validatorText,
    required this.controller,
    this.onChange,
    this.onFelidSubmitted,
    this.onTap,
    required this.inputType,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixTap,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: inputType,
      maxLength: maxlength,
      style: getSemiBoldStyle(
          fontColor: Theme.of(context).textTheme.bodyLarge!.color!),
      validator: validator,
      onChanged: onChange,
      onFieldSubmitted: onFelidSubmitted,
      onTap: onTap,
      readOnly: readOnly,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon != null
            ? Icon(
                prefixIcon,
                color: AppColors.teal,
                size: AppSize.s20,
              )
            : null,
        suffixIcon: suffixIcon != null
            ? IconButton(
                onPressed: suffixTap,
                icon: Icon(
                  suffixIcon,
                  color: AppColors.teal,
                  size: AppSize.s20,
                ),
              )
            : null,
      ),
    );
  }
}
