import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:travelhub/features/maps/cubit/maps_cubit.dart';
import 'package:travelhub/features/maps/presentation/widgets/map_content/map_hotel_item.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class MapsHotels extends StatelessWidget {
  const MapsHotels({
    super.key,
    required this.hotels,
  });

  final List<Hotel> hotels;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          height: AppHeight.h120,
          child: ListView.builder(
            controller: locator<MapsCubit>().scrollController,
            // pagingController: widget.locator<MapsCubit>().pagingController,
            itemCount: locator<MapsCubit>().hotels!.hotels!.length,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => VisibilityDetector(
              key: Key(index.toString()),
              onVisibilityChanged: (VisibilityInfo info) {
                if (info.visibleFraction == 1) {
                  locator<MapsCubit>().changeHotelCurrentIndex(index: index);
                }
              },
              child: MapHotelItem(
                  hotel: locator<MapsCubit>().hotels!.hotels![index]),
            ),
          ),
        ));
  }
}
