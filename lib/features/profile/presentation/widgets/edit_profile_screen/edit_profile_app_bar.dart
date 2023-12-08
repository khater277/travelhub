import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/shared_widgets/back_button.dart';
import 'package:travelhub/core/shared_widgets/circle_indicator.dart';
import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/profile/cubit/profile_cubit.dart';

class EditProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const EditProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const CustomBackButton(),
      titleSpacing: 0,
      centerTitle: false,
      title: const LargeHeadText(
        text: "Edit Profile",
        letterSpacing: 1.5,
      ),
      actions: [
        BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            if (locator<ProfileCubit>().profileImage != null) {
              return TextButton(
                onPressed: () => locator<ProfileCubit>().uploadProfileImage(),
                child: state.maybeWhen(
                  updateProfileImageLoading: () =>
                      CustomCircleIndicator(size: AppSize.s17),
                  getProfileImagePercentage: (percentage) =>
                      CustomCircleIndicator(size: AppSize.s17),
                  orElse: () => LargeHeadText(
                    text: 'Update',
                    size: FontSize.s14,
                    letterSpacing: 1.1,
                    color: AppColors.teal,
                  ),
                ),
              );
            } else {
              return const SizedBox();
            }
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
