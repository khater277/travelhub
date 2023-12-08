import 'package:flutter/material.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/profile/cubit/profile_cubit.dart';

class PickedUpImage extends StatelessWidget {
  const PickedUpImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: AppSize.s60,
      backgroundColor: Colors.grey.withOpacity(0.1),
      backgroundImage: FileImage(locator<ProfileCubit>().profileImage!),
    );
  }
}
