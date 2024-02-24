import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/config/navigation.dart';
import 'package:travelhub/core/firebase/collections_keys.dart';
import 'package:travelhub/core/local_storage/keys.dart';
import 'package:travelhub/core/local_storage/user_storage.dart';
import 'package:travelhub/core/shared_widgets/alert_dialog.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/auth/presentation/screens/login_screen.dart';
import 'package:travelhub/features/profile/cubit/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:travelhub/features/profile/presentation/screens/change_password_screen.dart';
import 'package:travelhub/features/profile/presentation/screens/delete_account_screen.dart';
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
                : index == 3
                    ? () {
                        Go.to(
                            context: context,
                            screen: const DeleteAccountScreen());
                      }
                    : null,
            child: ProfileItem(
                item: locator<ProfileCubit>().profileItemsData[index])),
      ),
    );
  }
}
