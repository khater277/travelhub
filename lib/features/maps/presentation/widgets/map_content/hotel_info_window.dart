import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:clippy_flutter/triangle.dart';
import 'package:flutter/material.dart';

class HotelInfoWindow extends StatelessWidget {
  final String hotelName;
  const HotelInfoWindow({
    super.key,
    required this.hotelName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(AppSize.s10),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(3, 3),
                    spreadRadius: -15,
                    blurRadius: 49,
                    color: Color.fromRGBO(79, 190, 158, 1),
                  )
                ]),
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: AppHeight.h5,
                horizontal: AppWidth.w8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.maps_home_work,
                    color: AppColors.teal,
                    size: AppSize.s18,
                  ),
                  SizedBox(width: AppWidth.w10),
                  Flexible(
                    child: SecondaryText(
                      text: hotelName,
                      maxLines: 2,
                      isLight: true,
                      size: FontSize.s13,
                      // center: true,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Triangle.isosceles(
          edge: Edge.BOTTOM,
          child: Container(
            color: AppColors.white,
            width: AppWidth.w18,
            height: AppHeight.h8,
          ),
        ),
      ],
    );
  }
}
