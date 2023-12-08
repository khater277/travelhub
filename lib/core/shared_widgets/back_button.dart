import 'package:flutter/material.dart';
import 'package:travelhub/config/navigation.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/core/utils/icons_broken.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Go.back(context: context),
      icon: Icon(
        IconBroken.Arrow___Left_2,
        size: AppSize.s18,
      ),
    );
  }
}
