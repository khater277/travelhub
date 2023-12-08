import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/local_storage/keys.dart';
import 'package:travelhub/core/local_storage/user_storage.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/profile/cubit/profile_cubit.dart';
import 'package:travelhub/features/profile/presentation/widgets/edit_profile_screen/my_profile_image/my_image.dart';
import 'package:travelhub/features/profile/presentation/widgets/edit_profile_screen/my_profile_image/no_image_founded.dart';
import 'package:travelhub/features/profile/presentation/widgets/edit_profile_screen/my_profile_image/pick_up_image_button.dart';
import 'package:travelhub/features/profile/presentation/widgets/edit_profile_screen/my_profile_image/picked_up_image.dart';

class MyProfileImage extends StatelessWidget {
  const MyProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                if (locator<ProfileCubit>().profileImage != null)
                  const PickedUpImage()
                else if (locator<UserStorage>()
                        .getData(id: HiveKeys.currentUser)!
                        .image !=
                    null)
                  const MyImage()
                else
                  const NoImageFounded(),
                const PickUpImageButton()
              ],
            ),
            SizedBox(height: AppHeight.h5),
            state.maybeWhen(
              getProfileImagePercentage: (percentage) =>
                  LinearProgressIndicator(
                value: percentage,
                backgroundColor: Colors.grey.withOpacity(0.3),
                minHeight: 3,
              ),
              orElse: () => const SizedBox(),
            ),
          ],
        );
      },
    );
  }
}
