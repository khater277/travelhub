import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:flutter/material.dart';

class AvailableRoomIconAndData extends StatelessWidget {
  final IconData icon;
  final String data;
  const AvailableRoomIconAndData({
    super.key,
    required this.icon,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        RotatedBox(
          quarterTurns: icon == Icons.output_outlined ? 2 : 0,
          child: Icon(
            icon,
            color: AppColors.teal,
            size: AppSize.s20,
          ),
        ),
        SizedBox(width: AppWidth.w10),
        SecondaryText(
          text: data,
          isLight: true,
          isButton: true,
          size: FontSize.s14,
        )
      ],
    );
  }
}
