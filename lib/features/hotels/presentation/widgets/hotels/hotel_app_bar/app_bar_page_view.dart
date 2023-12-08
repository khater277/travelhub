// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotels/hotel_app_bar/app_bar_image.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotels/hotel_app_bar/app_bar_image_data.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotels/hotel_app_bar/page_indicator.dart';

class AppBarPageView extends StatefulWidget {
  const AppBarPageView({super.key});

  @override
  State<AppBarPageView> createState() => _AppBarPageViewState();
}

class _AppBarPageViewState extends State<AppBarPageView> {
  ValueNotifier<int> index = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: index,
      builder: (BuildContext context, int value, Widget? child) {
        return Stack(
          children: [
            AppBarImage(index: index),
            PageIndicator(value: index.value),
            AppBarImageData(value: index.value)
          ],
        );
      },
    );
  }
}
