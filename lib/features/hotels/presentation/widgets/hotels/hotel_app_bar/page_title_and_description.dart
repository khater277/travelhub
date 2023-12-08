import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/core/utils/font_styles.dart';
import 'package:flutter/material.dart';

class PageTitleAndDescription extends StatelessWidget {
  final String title;
  final String description;
  const PageTitleAndDescription(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppWidth.w10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: getBoldStyle(
              fontColor: AppColors.white,
              fontSize: FontSize.s24,
            ),
          ),
          SizedBox(height: AppHeight.h5),
          Text(
            description,
            style: getMediumStyle(
              fontColor: AppColors.white,
              // fontSize: FontSize.s24,
            ),
          ),
        ],
      ),
    );
  }
}
