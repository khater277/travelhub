import 'package:travelhub/config/navigation.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:travelhub/features/hotels/presentation/screens/hotel_details_screen.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotels/hotel_info_card/hotel_details.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotels/hotel_info_card/hotel_image.dart';
import 'package:flutter/material.dart';

class HotelInfoCard extends StatelessWidget {
  final Hotel hotel;
  const HotelInfoCard({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Go.to(context: context, screen: HotelDetailsScreen(hotel: hotel)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppWidth.w20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppSize.s20),
          child: Container(
            color: Theme.of(context).cardTheme.color,
            width: double.infinity,
            height: AppHeight.h140,
            child: Row(
              children: [
                HotelImage(
                    image: hotel.images == null
                        ? ""
                        : hotel.images![0].path ?? ""),
                HotelDetails(hotel: hotel),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
