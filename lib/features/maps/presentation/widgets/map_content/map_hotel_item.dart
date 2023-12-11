import 'package:travelhub/config/navigation.dart';
import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:travelhub/features/hotels/presentation/screens/hotel_details_screen.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotels/hotel_info_card/hotel_image.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotels/hotel_info_card/hotel_location.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotels/hotel_info_card/hotel_night_price.dart';
import 'package:flutter/material.dart';

class MapHotelItem extends StatelessWidget {
  final Hotel hotel;
  const MapHotelItem({
    super.key,
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Go.to(
        context: context,
        screen: HotelDetailsScreen(
          hotel: hotel,
          height: MediaQuery.sizeOf(context).height,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppWidth.w10)
                .add(EdgeInsets.only(bottom: AppHeight.h5)),
            child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: AppHeight.h120,
                decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(AppSize.s20)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HotelImage(
                      image: hotel.images == null
                          ? ""
                          : hotel.images![0].path ?? "",
                      isMap: true,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: AppHeight.h4, horizontal: AppWidth.w7),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: LargeHeadText(
                                      text: hotel.name!.content!,
                                      size: FontSize.s15,
                                      maxLines: 2,
                                    ),
                                  ),
                                  SizedBox(height: AppHeight.h2),
                                  Flexible(
                                    child: SecondaryText(
                                      text:
                                          "${hotel.city!.content} , ${hotel.address!.number != null ? "${hotel.address!.number}, " : ''}${hotel.address!.street}",
                                      isLight: true,
                                      isButton: true,
                                      maxLines: 2,
                                      size: FontSize.s13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: AppHeight.h5),
                            Row(
                              children: [
                                Expanded(
                                  child: HotelLocation(
                                      coordinates: hotel.coordinates!),
                                ),
                                SizedBox(width: AppWidth.w3),
                                HotelStars(
                                    rate: double.parse(
                                        hotel.categoryCode!.endsWith('EST')
                                            ? hotel.categoryCode![0]
                                            : '4'),
                                    isMap: true),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
