import 'dart:ui';

import 'package:travelhub/config/navigation.dart';
import 'package:travelhub/core/shared_widgets/button.dart';
import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:travelhub/core/utils/app_functions.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/create_booking/presentation/screens/create_booking_screen.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotel_details/app_bar/flexible_space/hotel_address_and_location.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotels/hotel_info_card/hotel_night_price.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotels/hotel_info_card/hotel_rating.dart';
import 'package:flutter/material.dart';

class HotelInfoAppBar extends StatelessWidget {
  final Hotel hotel;
  const HotelInfoAppBar({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppWidth.w30,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSize.s20),
        child: SizedBox(
          width: double.infinity,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: AppHeight.h10,
                horizontal: AppWidth.w15,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LargeHeadText(
                    text:
                        "${AppFunctions.generateCountryFlag(countryCode: hotel.countryCode!)} ${hotel.name!.content!}",
                    color: AppColors.white,
                    size: FontSize.s18,
                  ),
                  SizedBox(height: AppHeight.h3),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            HotelDetailsAppBarAddressAndLocation(
                              icon: Icons.location_city,
                              text: hotel.city!.content!,
                            ),
                            SizedBox(height: AppHeight.h2),
                            HotelDetailsAppBarAddressAndLocation(
                              icon: Icons.location_on,
                              text:
                                  "${AppFunctions.formatDistance(distance: AppFunctions.determineDistanceToHotel(coordinates: hotel.coordinates!))} away from you",
                            ),
                            SizedBox(height: AppHeight.h8),
                            HotelRating(
                                rate: double.parse(hotel.categoryCode![0])),
                          ],
                        ),
                      ),
                      HotelStars(
                          rate: double.parse(hotel.categoryCode![0]),
                          isHotelDetails: true),
                    ],
                  ),
                  SizedBox(height: AppHeight.h10),
                  CustomButton(
                    text: "Book Now",
                    onPressed: () {
                      Go.to(
                        context: context,
                        screen: CreateBookingScreen(hotelId: hotel.code!),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
