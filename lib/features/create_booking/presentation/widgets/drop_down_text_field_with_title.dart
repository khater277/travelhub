import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/create_booking/presentation/widgets/create_booking_drop_down_text_field.dart';
import 'package:travelhub/features/create_booking/presentation/widgets/create_text_field_title.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

class DropDownTextFieldWithTitle extends StatelessWidget {
  final String title;
  final SingleValueDropDownController controller;
  final List<DropDownValueModel> list;
  final IconData icon;
  const DropDownTextFieldWithTitle({
    super.key,
    required this.title,
    required this.icon,
    required this.controller,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CreateBookingTextFieldTitle(title: title),
        SizedBox(height: AppHeight.h5),
        CreateBookingDropDownTextField(
          icon: icon,
          controller: controller,
          hintText: title.toLowerCase(),
          list: list,
        ),
      ],
    );
  }
}
