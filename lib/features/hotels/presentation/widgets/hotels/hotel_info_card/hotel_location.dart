import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_functions.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/coordinates.dart';
import 'package:flutter/material.dart';

class HotelLocation extends StatelessWidget {
  final Coordinates coordinates;
  const HotelLocation({super.key, required this.coordinates});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on,
          size: AppSize.s18,
          color: AppColors.teal,
        ),
        SizedBox(width: AppWidth.w2),
        Flexible(
          child: SecondaryText(
            text:
                "${AppFunctions.formatDistance(distance: AppFunctions.determineDistanceToHotel(coordinates: coordinates))} away from you",
            isLight: true,
            isButton: true,
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
