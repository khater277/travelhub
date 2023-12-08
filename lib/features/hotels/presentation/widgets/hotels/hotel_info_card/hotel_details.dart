import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotels/hotel_info_card/hotel_location.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotels/hotel_info_card/hotel_name_and_address.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotels/hotel_info_card/hotel_rating.dart';
import 'package:flutter/material.dart';

class HotelDetails extends StatelessWidget {
  final Hotel hotel;
  const HotelDetails({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: AppHeight.h10,
          bottom: AppHeight.h6,
          left: AppWidth.w8,
          right: AppWidth.w10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HotelNameAndAddress(
              name: hotel.name!.content!,
              address: hotel.address!,
              city: hotel.city!,
              countryCode: hotel.countryCode!,
            ),
            SizedBox(height: AppHeight.h5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HotelLocation(coordinates: hotel.coordinates!),
                HotelRating(
                    rate: double.parse(hotel.categoryCode!.endsWith('EST')
                        ? hotel.categoryCode![0]
                        : '4')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
