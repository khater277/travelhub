import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:travelhub/core/utils/app_strings.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:flutter/material.dart';

class AcceptTermsText extends StatelessWidget {
  const AcceptTermsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppWidth.w20),
      child: SecondaryText(
        text: AppStrings.acceptTerms,
        isLight: true,
        center: true,
        size: FontSize.s13,
        isEllipsis: false,
      ),
    );
  }
}
