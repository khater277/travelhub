import 'dart:ui';

import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:flutter/material.dart';

class MoreDetailsButton extends StatelessWidget {
  const MoreDetailsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: AppHeight.h20,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSize.s20),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: AppHeight.h5,
            horizontal: AppWidth.w15,
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                LargeHeadText(
                  text: 'More Details',
                  size: FontSize.s13,
                  color: AppColors.white,
                ),
                SizedBox(width: AppWidth.w2),
                const Icon(Icons.keyboard_arrow_down, color: AppColors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
