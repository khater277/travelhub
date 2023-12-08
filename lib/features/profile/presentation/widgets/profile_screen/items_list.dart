import 'package:travelhub/app/locator.dart';
import 'package:travelhub/config/navigation.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/profile/cubit/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:travelhub/features/profile/presentation/screens/change_password_screen.dart';
import 'package:travelhub/features/profile/presentation/widgets/profile_screen/item.dart';

class ProfileItemsList extends StatelessWidget {
  const ProfileItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: locator<ProfileCubit>().profileItemsData.length,
        separatorBuilder: (BuildContext context, int index) => Padding(
          padding: EdgeInsets.symmetric(vertical: AppHeight.h8),
          child: const Divider(),
        ),
        itemBuilder: (BuildContext context, int index) => GestureDetector(
            onTap: index == 0
                ? () => Go.to(
                    context: context, screen: const ChangePasswordScreen())
                : null,
            child: ProfileItem(
                item: locator<ProfileCubit>().profileItemsData[index])),
      ),
    );
  }
}
