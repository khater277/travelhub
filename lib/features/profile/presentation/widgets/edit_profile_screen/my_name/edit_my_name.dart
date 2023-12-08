import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/local_storage/keys.dart';
import 'package:travelhub/core/local_storage/user_storage.dart';
import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/core/utils/icons_broken.dart';
import 'package:flutter/material.dart';
import 'package:travelhub/features/profile/presentation/widgets/edit_profile_screen/my_name/edit_name_text_field.dart';
import 'package:travelhub/features/profile/presentation/widgets/edit_profile_screen/my_name/save_and_cancel_buttons.dart';

class EditMyName extends StatefulWidget {
  const EditMyName({super.key});

  @override
  State<EditMyName> createState() => _EditMyNameState();
}

class _EditMyNameState extends State<EditMyName> {
  TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    _nameController = TextEditingController(
        text: locator<UserStorage>().getData(id: HiveKeys.currentUser)!.name!);
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            builder: (BuildContext context) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: AppWidth.w5),
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppSize.s10),
                        topRight: Radius.circular(AppSize.s10),
                      )),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: AppHeight.h4, horizontal: AppWidth.w8),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: AppHeight.h5),
                        LargeHeadText(
                          text: "Enter your name",
                          size: FontSize.s13,
                          color: AppColors.teal,
                        ),
                        SizedBox(height: AppHeight.h4),
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: Column(
                            children: [
                              EditNameTextField(
                                  nameController: _nameController),
                              SizedBox(height: AppHeight.h4),
                              SaveAndCancelButtons(
                                  nameController: _nameController),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        icon: Icon(
          IconBroken.Edit,
          size: AppSize.s16,
          color: AppColors.teal,
        ));
  }
}
