import 'package:flutter/material.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/local_storage/keys.dart';
import 'package:travelhub/core/local_storage/user_storage.dart';
import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/core/utils/icons_broken.dart';

class MyEmail extends StatelessWidget {
  const MyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: AppHeight.h4, horizontal: AppWidth.w4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            IconBroken.Message,
            size: AppSize.s20,
            color: Colors.black54,
          ),
          SizedBox(width: AppWidth.w10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LargeHeadText(
                    text: "Email", size: FontSize.s13, color: Colors.teal),
                SizedBox(height: AppHeight.h1),
                LargeHeadText(
                  text: locator<UserStorage>()
                      .getData(id: HiveKeys.currentUser)!
                      .email!,
                  size: FontSize.s12,
                  color: Colors.black54,
                ),
              ],
            ),
          ),
          // Icon(IconBroken.Edit,size: 16.sp,color: AppColors.grey,),
        ],
      ),
    );
  }
}
