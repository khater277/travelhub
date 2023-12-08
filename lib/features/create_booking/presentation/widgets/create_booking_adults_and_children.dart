import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/create_booking/cubit/create_booking_cubit.dart';
import 'package:travelhub/features/create_booking/presentation/widgets/drop_down_text_field_with_title.dart';
import 'package:flutter/material.dart';

class CreateBookingAdultsAndChildren extends StatelessWidget {
  const CreateBookingAdultsAndChildren({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: DropDownTextFieldWithTitle(
            title: "Adults",
            controller: locator<CreateBookingCubit>().adultsController!,
            list: locator<CreateBookingCubit>().dropDownList,
            icon: Icons.people_outline,
          ),
        ),
        SizedBox(width: AppWidth.w10),
        Flexible(
          child: DropDownTextFieldWithTitle(
            title: "Children",
            controller: locator<CreateBookingCubit>().childrenController!,
            list: locator<CreateBookingCubit>().dropDownList,
            icon: Icons.child_care,
          ),
        ),
      ],
    );
  }
}
