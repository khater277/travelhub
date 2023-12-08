import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_functions.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/address.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/city.dart';
import 'package:flutter/material.dart';

class HotelNameAndAddress extends StatelessWidget {
  final String name;
  final Address address;
  final City? city;
  final String? countryCode;
  const HotelNameAndAddress(
      {super.key,
      required this.name,
      required this.address,
      this.city,
      this.countryCode});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          LargeHeadText(
            text: name,
            maxLines: 2,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (countryCode != null && city != null)
                  SecondaryText(
                    text:
                        "${AppFunctions.generateCountryFlag(countryCode: countryCode!)} ${city!.content}",
                    isLight: true,
                    isButton: true,
                    maxLines: 1,
                    // size: addressSize,
                  ),
                SizedBox(height: AppHeight.h2),
                Flexible(
                  child: Row(
                    children: [
                      Icon(
                        Icons.maps_home_work,
                        size: AppSize.s18,
                        color: AppColors.teal,
                      ),
                      SizedBox(width: AppWidth.w5),
                      Flexible(
                          child: SecondaryText(
                        text:
                            "${address.number != null ? "${address.number}, " : ''}${address.street}",
                        isLight: true,
                        isButton: true,
                        // maxLines: 2,
                        // size: addressSize,
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
