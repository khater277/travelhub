import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/core/utils/font_styles.dart';
import 'package:travelhub/features/booking/cubit/booking_cubit.dart';
import 'package:flutter/material.dart';

class TabBarHead extends StatelessWidget {
  const TabBarHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s30),
        border: Border.all(color: Theme.of(context).hintColor),
        color: Theme.of(context).hintColor,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: AppHeight.h5, horizontal: AppWidth.w10),
        child: TabBar(
          controller: locator<BookingCubit>().tabController,
          labelColor: AppColors.teal,
          unselectedLabelColor: AppColors.grey,
          unselectedLabelStyle: getMediumStyle(
            fontColor: AppColors.grey,
            fontSize: AppSize.s14,
          ),
          indicatorColor: Colors.transparent,
          labelStyle: getBoldStyle(
            fontSize: AppSize.s15,
            fontColor: Theme.of(context).textTheme.bodyLarge!.color!,
          ),
          isScrollable: true,
          onTap: (index) {
            locator<BookingCubit>().changeTabBar(index);
            // cubit.createBooking();
          },
          tabs: locator<BookingCubit>()
              .bookings
              .map((element) => Tab(
                    text: element.name,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
