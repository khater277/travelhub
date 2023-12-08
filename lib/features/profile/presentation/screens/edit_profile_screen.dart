import 'package:flutter/material.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/profile/cubit/profile_cubit.dart';
import 'package:travelhub/features/profile/presentation/widgets/edit_profile_screen/edit_profile_app_bar.dart';
import 'package:travelhub/features/profile/presentation/widgets/edit_profile_screen/my_email.dart';
import 'package:travelhub/features/profile/presentation/widgets/edit_profile_screen/my_name/my_name.dart';
import 'package:travelhub/features/profile/presentation/widgets/edit_profile_screen/my_profile_image/my_profile_image.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  void dispose() {
    locator<ProfileCubit>().disposeEditProfile();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EditProfileAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: AppHeight.h8, horizontal: AppWidth.w10),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const MyProfileImage(),
                SizedBox(height: AppHeight.h14),
                const MyName(),
                SizedBox(height: AppHeight.h8),
                const MyEmail(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
