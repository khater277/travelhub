import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/create_booking/cubit/create_booking_cubit.dart';
import 'package:travelhub/features/create_booking/presentation/widgets/create_booking_text_field_and_title.dart';
import 'package:flutter/material.dart';

class CreateBookingName extends StatelessWidget {
  const CreateBookingName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: CreateBookingTextFieldAndTitle(
            controller: locator<CreateBookingCubit>().firstNameController!,
            title: 'First Name',
            hint: "first name",
            // check: Check.IN,
            icon: Icons.person_outline,
          ),
        ),
        SizedBox(width: AppWidth.w10),
        Flexible(
          child: CreateBookingTextFieldAndTitle(
            controller: locator<CreateBookingCubit>().lastNameController!,
            title: 'Last Name',
            hint: "last name",
            // check: Check.IN,
            icon: Icons.person_outline,
          ),
        ),
      ],
    );
  }
}
