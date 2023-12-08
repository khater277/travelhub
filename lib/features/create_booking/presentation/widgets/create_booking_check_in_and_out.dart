import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/core/utils/constants.dart';
import 'package:travelhub/features/create_booking/cubit/create_booking_cubit.dart';
import 'package:travelhub/features/create_booking/presentation/widgets/create_booking_text_field_and_title.dart';

import 'package:flutter/material.dart';

class CreateBookingCheckInAndOut extends StatelessWidget {
  const CreateBookingCheckInAndOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreateBookingTextFieldAndTitle(
          controller: locator<CreateBookingCubit>().checkInController!,
          title: 'Check In',
          hint: 'check in',
          check: Check.IN,
          icon: Icons.input_outlined,
        ),
        SizedBox(height: AppHeight.h10),
        CreateBookingTextFieldAndTitle(
          controller: locator<CreateBookingCubit>().checkOutController!,
          title: 'Check Out',
          hint: 'check out',
          check: Check.OUT,
          icon: Icons.output_outlined,
        )
      ],
    );
  }
}
