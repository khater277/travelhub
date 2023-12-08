import 'package:travelhub/core/shared_widgets/circle_indicator.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/core/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final Color? fillColor;
  final Color? textColor;
  final bool setShadow;
  final bool loadingCondition;
  final IconData? icon;

  const CustomButton(
      {super.key,
      required this.text,
      this.fillColor,
      this.textColor,
      this.setShadow = false,
      this.loadingCondition = false,
      this.icon,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: loadingCondition ? () {} : onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: fillColor),
      child: loadingCondition
          ? const CustomCircleIndicator(color: Colors.white)
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null)
                  Row(
                    children: [
                      FaIcon(
                        icon,
                        color: Colors.white,
                      ),
                      SizedBox(width: AppWidth.w6),
                    ],
                  ),
                Text(
                  text,
                  style: getMediumStyle(
                    fontColor: textColor ?? AppColors.white,
                  ),
                ),
              ],
            ),
    );
  }
}
