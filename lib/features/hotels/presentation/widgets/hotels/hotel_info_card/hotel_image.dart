import 'package:travelhub/core/shared_widgets/network_image.dart';
import 'package:travelhub/core/utils/app_strings.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:flutter/material.dart';

class HotelImage extends StatelessWidget {
  final String image;
  final bool isMap;
  const HotelImage({super.key, required this.image, this.isMap = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppWidth.w115,
      height: isMap ? AppHeight.h120 : AppHeight.h140,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppSize.s20),
          bottomLeft: Radius.circular(AppSize.s20),
        ),
        child: CustomNetworkImage(
            imageUrl: AppStrings.imagesUrl + image, fit: BoxFit.fill),
      ),
    );
  }
}
