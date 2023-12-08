import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_functions.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotels/hotel_info_card/hotel_night_price.dart';
import 'package:flutter/material.dart';

class HotelDetailsHead extends StatelessWidget {
  final Hotel hotel;
  const HotelDetailsHead({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LargeHeadText(
                  text:
                      "${AppFunctions.generateCountryFlag(countryCode: hotel.countryCode!)} ${hotel.name!.content!}"),
              SizedBox(height: AppHeight.h2),
              Row(
                children: [
                  Icon(
                    Icons.location_city,
                    color: AppColors.teal,
                    size: AppSize.s18,
                  ),
                  SizedBox(width: AppWidth.w2),
                  SecondaryText(
                    text: hotel.city!.content!,
                    isButton: true,
                    isLight: true,
                    isEllipsis: true,
                  ),
                ],
              ),
              SizedBox(height: AppHeight.h2),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: AppColors.teal,
                    size: AppSize.s18,
                  ),
                  SizedBox(width: AppWidth.w2),
                  SecondaryText(
                    text:
                        "${AppFunctions.formatDistance(distance: AppFunctions.determineDistanceToHotel(coordinates: hotel.coordinates!))} away from you",
                    isButton: true,
                    isLight: true,
                    isEllipsis: true,
                  ),
                ],
              ),
            ],
          ),
        ),
        HotelStars(rate: double.parse(hotel.categoryCode![0])),
      ],
    );
  }
}
