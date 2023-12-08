import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/core/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EditNameTextField extends StatelessWidget {
  final TextEditingController nameController;
  const EditNameTextField({super.key, required this.nameController});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [NoLeadingSpaceFormatter()],
      controller: nameController,
      maxLength: 25,
      style: getMediumStyle(fontColor: AppColors.black, fontSize: FontSize.s13),
      decoration: InputDecoration(
        fillColor: AppColors.offWhite,
        counterStyle: TextStyle(
          color: AppColors.grey,
          fontSize: FontSize.s12,
        ),
        suffixStyle: TextStyle(color: AppColors.grey, fontSize: FontSize.s12),
        contentPadding: EdgeInsets.symmetric(
            vertical: AppHeight.h1, horizontal: AppWidth.w4),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.teal),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.teal),
        ),
      ),
    );
  }
}

class NoLeadingSpaceFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.startsWith(' ')) {
      final String trimmedText = newValue.text.trimLeft();

      return TextEditingValue(
        text: trimmedText,
        selection: TextSelection(
          baseOffset: trimmedText.length,
          extentOffset: trimmedText.length,
        ),
      );
    }
    return newValue;
  }
}
