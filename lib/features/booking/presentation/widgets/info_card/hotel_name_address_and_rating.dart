import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotels/hotel_info_card/hotel_rating.dart';
import 'package:flutter/material.dart';

class BookingHotelNameAddressAndRating extends StatelessWidget {
  const BookingHotelNameAddressAndRating({
    super.key,
    required this.hotel,
  });

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
            child: LargeHeadText(
          text: "${hotel.name!.content}",
          size: FontSize.s18,
        )),
        Flexible(
          child: SecondaryText(
            text: "${hotel.city!.content} , ${hotel.address!.street!}",
            isLight: true,
            isButton: true,
          ),
        ),
        SizedBox(height: AppHeight.h8),
        HotelRating(
            rate: hotel.categoryCode!.endsWith('EST')
                ? double.parse(hotel.categoryCode![0])
                : 4.0),
      ],
    );
  }
}
