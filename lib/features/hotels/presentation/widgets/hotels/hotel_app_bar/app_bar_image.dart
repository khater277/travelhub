import 'package:carousel_slider/carousel_slider.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/hotels/cubit/hotels_cubit.dart';
import 'package:flutter/material.dart';

class AppBarImage extends StatelessWidget {
  final ValueNotifier<int> index;
  const AppBarImage({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: locator<HotelsCubit>()
            .pageViewData
            .map(
              (data) => Image.asset(
                data.image,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            )
            .toList(),
        options: CarouselOptions(
          height: AppHeight.h320,
          aspectRatio: 16 / 9,
          viewportFraction: 1.0,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 300),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeFactor: 0.0,
          onPageChanged: (int index, CarouselPageChangedReason reason) {
            this.index.value = index;
          },
          scrollDirection: Axis.horizontal,
        ));
  }
}
