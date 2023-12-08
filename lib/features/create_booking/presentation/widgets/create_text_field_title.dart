import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class CreateBookingTextFieldTitle extends StatelessWidget {
  final String title;
  const CreateBookingTextFieldTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return LargeHeadText(
      text: title,
      color: AppColors.teal,
      size: FontSize.s14,
    );
  }
}
