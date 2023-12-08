import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/hotels/cubit/hotels_cubit.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  final int value;
  const PageIndicator({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.bottomEnd,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppHeight.h25,
          horizontal: AppWidth.w18,
        ),
        child: AnimatedSmoothIndicator(
            activeIndex: value,
            count: locator<HotelsCubit>().pageViewData.length,
            effect: WormEffect(
              dotWidth: AppSize.s9,
              dotHeight: AppSize.s9,
              dotColor: AppColors.grey,
              activeDotColor: AppColors.teal,
            )),
      ),
    );
  }
}
