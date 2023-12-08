import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/core/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class HotelDescription extends StatelessWidget {
  final String description;
  const HotelDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        LargeHeadText(
          text: "Description",
          size: FontSize.s15,
        ),
        SizedBox(height: AppHeight.h5),
        ReadMoreText(
          description,
          trimLines: 3,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Show more',
          trimExpandedText: 'Show less',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: FontSize.s14,
                fontWeight: FontWeightManager.medium,
                color: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .color!
                    .withOpacity(0.8),
                wordSpacing: 2.0,
              ),
          moreStyle: getSemiBoldStyle(fontColor: AppColors.teal),
          lessStyle: getSemiBoldStyle(fontColor: AppColors.teal),
        ),
      ],
    );
  }
}
