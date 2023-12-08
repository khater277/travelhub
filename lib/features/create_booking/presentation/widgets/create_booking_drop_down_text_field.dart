import 'package:travelhub/core/shared_widgets/drop_down_text_fiels.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

class CreateBookingDropDownTextField extends StatelessWidget {
  final SingleValueDropDownController controller;
  final List<DropDownValueModel> list;
  final String hintText;
  final IconData icon;
  const CreateBookingDropDownTextField({
    super.key,
    required this.icon,
    required this.controller,
    required this.list,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return CustomDropDownTextField(
      controller: controller,
      list: list,
      hintText: hintText,
      inputType: TextInputType.text,
      rounded: 8,
      border: AppColors.lightGrey,
      textSize: FontSize.s14,
      onChanged: (value) {
        //   DropDownValueModel downValueModel = value;
        //   AppCubit.get(context)
        //       .changeReminderDuration(value: downValueModel.value);
        //
      },
      prefixIcon: icon,
    );
  }
}
