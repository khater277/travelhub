import 'package:flutter/material.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/config/navigation.dart';
import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/core/utils/icons_broken.dart';
import 'package:travelhub/features/profile/cubit/profile_cubit.dart';
import 'package:travelhub/features/profile/presentation/screens/edit_profile_screen.dart';

class ProfileHead extends StatelessWidget {
  const ProfileHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: LargeHeadText(
                  text: locator<ProfileCubit>().user.name!,
                  size: FontSize.s18,
                  maxLines: 50,
                ),
              ),
              SizedBox(height: AppHeight.h2),
              Flexible(
                child: GestureDetector(
                  onTap: () => Go.to(
                      context: context, screen: const EditProfileScreen()),
                  child: SecondaryText(
                    text: "view and edit profile",
                    size: FontSize.s13,
                    isLight: true,
                    maxLines: 2,
                  ),
                ),
              )
            ],
          ),
        ),
        if (locator<ProfileCubit>().user.image != null)
          CircleAvatar(
            radius: AppSize.s25,
            backgroundColor: AppColors.teal.withOpacity(0.5),
            backgroundImage: NetworkImage(locator<ProfileCubit>().user.image!),
          )
        else
          CircleAvatar(
            radius: AppSize.s25,
            backgroundColor: Colors.grey.withOpacity(0.1),
            child: Icon(
              IconBroken.Profile,
              color: AppColors.teal,
              size: AppSize.s25,
            ),
          )
      ],
    );
  }
}
