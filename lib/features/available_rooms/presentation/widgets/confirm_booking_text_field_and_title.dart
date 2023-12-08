import 'package:travelhub/core/shared_widgets/text_form_field.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/create_booking/presentation/widgets/create_text_field_title.dart';
import 'package:flutter/material.dart';

class ConfirmBookingTextFieldAndTitle extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final IconData icon;
  const ConfirmBookingTextFieldAndTitle({
    super.key,
    required this.controller,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        CreateBookingTextFieldTitle(title: title),
        SizedBox(height: AppHeight.h5),
        CustomTextField(
          hintText: "",
          validatorText: "validatorText",
          controller: controller,
          inputType: TextInputType.text,
          prefixIcon: icon,
          readOnly: true,
        ),
      ],
    );
  }
}
