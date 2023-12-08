import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/booking/cubit/booking_cubit.dart';
import 'package:travelhub/features/booking/presentation/widgets/bookings_list.dart';
import 'package:travelhub/features/booking/presentation/widgets/tab_bar_head.dart';
import 'package:flutter/material.dart';

class BookingSuccessWidget extends StatelessWidget {
  const BookingSuccessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: DefaultTabController(
              length: locator<BookingCubit>().bookings.length,
              initialIndex: 0,
              child: Column(children: [
                SizedBox(height: AppHeight.h10),
                // ignore: prefer_const_constructors
                TabBarHead(),
                // ignore: prefer_const_constructors
                BookingsList()
              ])),
        ),
      ],
    );
  }
}
