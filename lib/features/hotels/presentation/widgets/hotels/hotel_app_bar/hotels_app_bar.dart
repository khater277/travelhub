// ignore_for_file: prefer_const_constructors

import 'package:travelhub/config/navigation.dart';
import 'package:travelhub/core/shared_widgets/text_form_field.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotels/hotel_app_bar/app_bar_page_view.dart';
import 'package:travelhub/features/maps/presentation/screens/map_screen.dart';
import 'package:flutter/material.dart';

class HotelsAppBar extends StatelessWidget {
  const HotelsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: AppHeight.h300,
      collapsedHeight: AppHeight.h150,
      title: CustomTextField(
        hintText: "where are you going?",
        validatorText: "Error!",
        controller: TextEditingController(),
        inputType: TextInputType.emailAddress,
        prefixIcon: Icons.search_outlined,
        readOnly: true,
        onTap: () => Go.to(context: context, screen: const MapScreen()),
      ),
      flexibleSpace: AppBarPageView(),
    );
  }
}
