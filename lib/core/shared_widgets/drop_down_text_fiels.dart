import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/core/utils/font_styles.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomDropDownTextField extends StatelessWidget {
  final List<DropDownValueModel> list;
  final SingleValueDropDownController controller;
  final String hintText;
  final IconData? prefixIcon;
  final double textSize;
  final TextInputType? inputType;
  final Color border;
  final String? validateText;
  final double rounded;
  final void Function(dynamic)? onChanged;
  const CustomDropDownTextField({
    super.key,
    required this.list,
    required this.controller,
    required this.hintText,
    required this.prefixIcon,
    required this.textSize,
    this.inputType,
    required this.border,
    this.validateText,
    required this.rounded,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropDownTextField(
      dropdownRadius: 5,
      dropDownItemCount: list.length,
      clearOption: false,
      controller: controller,
      textStyle: getSemiBoldStyle(
          fontColor: Theme.of(context).textTheme.bodyLarge!.color!),
      listTextStyle: getSemiBoldStyle(
          fontColor: Theme.of(context).textTheme.bodyLarge!.color!),
      validator: (value) {
        if (value!.isEmpty) {
          if (validateText != null) {
            return validateText!;
          } else {
            return "can't be empty";
          }
        }
        return null;
      },
      textFieldDecoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon != null
            ? Icon(
                prefixIcon,
                color: AppColors.teal,
                size: AppSize.s20,
              )
            : null,
      ),
      onChanged: onChanged,
      dropDownList: list
          .map(
            (element) =>
                DropDownValueModel(name: element.name, value: element.value),
          )
          .toList(),
    );
  }
}
