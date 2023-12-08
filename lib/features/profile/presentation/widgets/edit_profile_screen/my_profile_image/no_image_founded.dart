import 'package:flutter/material.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/core/utils/icons_broken.dart';

class NoImageFounded extends StatelessWidget {
  const NoImageFounded({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: AppSize.s60,
      backgroundColor: Colors.grey.withOpacity(0.1),
      child: Icon(
        IconBroken.Profile,
        color: AppColors.teal,
        size: AppSize.s60,
      ),
    );
  }
}
