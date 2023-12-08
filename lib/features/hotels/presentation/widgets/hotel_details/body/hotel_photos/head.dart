import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/core/utils/font_styles.dart';
import 'package:flutter/material.dart';

class PhotosHead extends StatelessWidget {
  const PhotosHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: LargeHeadText(
            text: 'Photo',
            size: FontSize.s15,
          ),
        ),
        TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  "View all",
                  style: getSemiBoldStyle(fontColor: AppColors.teal),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: AppColors.teal,
                  size: AppSize.s16,
                )
              ],
            ))
      ],
    );
  }
}
