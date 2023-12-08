import 'package:flutter/material.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/core/utils/icons_broken.dart';
import 'package:travelhub/features/profile/cubit/profile_cubit.dart';

class PickUpImageButton extends StatelessWidget {
  const PickUpImageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async => locator<ProfileCubit>().pickProfileImage(),
      child: CircleAvatar(
        radius: AppSize.s18,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        child: Icon(
          IconBroken.Camera,
          color: AppColors.teal,
          size: AppSize.s20,
        ),
      ),
    );
  }
}
