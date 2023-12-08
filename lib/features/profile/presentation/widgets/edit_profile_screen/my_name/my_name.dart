import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/config/navigation.dart';
import 'package:travelhub/core/local_storage/keys.dart';
import 'package:travelhub/core/local_storage/user_storage.dart';
import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/core/utils/icons_broken.dart';
import 'package:flutter/material.dart';
import 'package:travelhub/features/profile/cubit/profile_cubit.dart';
import 'package:travelhub/features/profile/presentation/widgets/edit_profile_screen/my_name/edit_my_name.dart';

class MyName extends StatelessWidget {
  const MyName({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppHeight.h4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            IconBroken.Profile,
            size: AppSize.s20,
            color: Colors.black54,
          ),
          SizedBox(width: AppWidth.w10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LargeHeadText(
                  text: "Name",
                  size: FontSize.s13,
                  color: AppColors.teal,
                ),
                SizedBox(height: AppHeight.h1),
                BlocConsumer<ProfileCubit, ProfileState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      updateMyName: () => Go.back(context: context),
                      orElse: () {},
                    );
                  },
                  builder: (context, state) => LargeHeadText(
                    text: locator<UserStorage>()
                        .getData(id: HiveKeys.currentUser)!
                        .name!,
                    size: FontSize.s14,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: AppHeight.h2),
                LargeHeadText(
                  text:
                      "This is not your username or pin. This name will be visible to your NUNTIUS contacts",
                  size: FontSize.s10,
                  color: Colors.grey,
                  maxLines: 3,
                ),
              ],
            ),
          ),
          const EditMyName(),
        ],
      ),
    );
  }
}
