import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/core/utils/font_styles.dart';
import 'package:travelhub/features/available_rooms/presentation/widgets/available_room_icon_and_data.dart';
import 'package:travelhub/features/create_booking/data/models/body/check_availability_body.dart';
import 'package:travelhub/features/create_booking/data/models/response/rate.dart';
import 'package:flutter/material.dart';

class NumberOfChildrenAndPrice extends StatelessWidget {
  const NumberOfChildrenAndPrice({
    super.key,
    required this.checkAvailabilityBody,
    required this.availableRate,
  });

  final CheckAvailabilityBody checkAvailabilityBody;
  final AvailableRate availableRate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AvailableRoomIconAndData(
              icon: Icons.child_care,
              data: checkAvailabilityBody.occupancies![0].children!.toString()),
        ),
        Expanded(
          child: Row(
            children: [
              Text(
                ' \$',
                style: getBoldStyle(
                  fontColor: AppColors.teal,
                  fontSize: FontSize.s15,
                ),
              ),
              SizedBox(width: AppWidth.w15),
              SecondaryText(
                text: availableRate.net ?? "unknown",
                isLight: true,
                isButton: true,
                size: FontSize.s15,
              )
            ],
          ),
        ),
      ],
    );
  }
}
