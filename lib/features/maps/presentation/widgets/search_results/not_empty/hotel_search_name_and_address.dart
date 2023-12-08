import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:flutter/material.dart';

class HotelSearchNameAndAddress extends StatelessWidget {
  const HotelSearchNameAndAddress({
    super.key,
    required this.hotel,
  });

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LargeHeadText(
            size: FontSize.s14,
            maxLines: 3,
            isEllipsis: false,
            text: "${hotel.name!.content}",
          ),
          SizedBox(height: AppHeight.h5),
          SecondaryText(
            size: FontSize.s12,
            maxLines: 3,
            isEllipsis: false,
            text: "${hotel.city!.content} , ${hotel.address!.content}",
          ),
        ],
      ),
    );
  }
}
