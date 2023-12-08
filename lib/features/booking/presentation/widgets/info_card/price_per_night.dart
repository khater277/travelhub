import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class PricePerNight extends StatelessWidget {
  const PricePerNight({
    super.key,
    required this.price,
  });

  final String price;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        LargeHeadText(
          text: "$price\$",
          size: FontSize.s20,
        ),
        // SizedBox(height: AppHeight.h2),
        SecondaryText(
          text: "/Per night",
          isButton: true,
          size: FontSize.s17,
          isLight: true,
        ),
      ],
    );
  }
}
