import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/core/utils/font_styles.dart';
import 'package:flutter/material.dart';

class HotelDetailsAppBarAddressAndLocation extends StatelessWidget {
  final IconData icon;
  final String text;
  const HotelDetailsAppBarAddressAndLocation(
      {super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        children: [
          Icon(
            icon,
            size: AppSize.s16,
            color: AppColors.teal,
          ),
          SizedBox(width: AppWidth.w3),
          Flexible(
            child: Text(
              text,
              style: getRegularStyle(fontColor: AppColors.white),
            ),
          ),
        ],
      ),
    );
  }
}
