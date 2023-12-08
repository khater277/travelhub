import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotels/hotel_info_card/hotel_rating.dart';
import 'package:flutter/material.dart';

class HotelStars extends StatelessWidget {
  final double rate;
  final bool isHotelDetails;
  final bool isBooking;
  final bool isMap;

  const HotelStars({
    super.key,
    required this.rate,
    this.isHotelDetails = false,
    this.isBooking = false,
    this.isMap = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HotelRating(rate: rate, isMap: isMap),
        SecondaryText(
          text: "Stars",
          size: isBooking ? FontSize.s16 : FontSize.s15,
          color: isHotelDetails == true ? AppColors.white : null,
          isLight: true,
          isButton: true,
          maxLines: 1,
        ),
      ],
    );
  }
}
