import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:flutter/material.dart';

class CustomCircleIndicator extends StatelessWidget {
  final double? size;
  final Color? color;
  final double? strokeWidth;
  const CustomCircleIndicator(
      {super.key, this.size, this.color, this.strokeWidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size ?? AppSize.s30,
      height: size ?? AppSize.s30,
      child: CircularProgressIndicator(
        color: color ?? AppColors.teal,
        strokeWidth: strokeWidth ?? AppSize.s2,
      ),
    );
  }
}
