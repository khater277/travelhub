import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:flutter/material.dart';

class BestDealsHead extends StatelessWidget {
  const BestDealsHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: AppWidth.w25,
        right: AppWidth.w5,
      ),
      child: Row(
        children: [
          Expanded(
            child: LargeHeadText(
              text: "Best Deals",
              size: FontSize.s18,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios,
                size: AppSize.s16,
                color: AppColors.teal,
              ))
        ],
      ),
    );
  }
}
