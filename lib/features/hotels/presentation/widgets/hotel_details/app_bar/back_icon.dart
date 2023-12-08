import 'package:travelhub/config/navigation.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:flutter/material.dart';

class HotelDetailsBackIcon extends StatelessWidget {
  const HotelDetailsBackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: AppWidth.w2),
        Container(
          decoration: BoxDecoration(
            color: AppColors.white.withOpacity(0.4),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () => Go.back(context: context),
            icon: const Icon(Icons.arrow_back),
          ),
        ),
      ],
    );
  }
}
