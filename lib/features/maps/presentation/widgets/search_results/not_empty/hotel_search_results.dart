import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/maps/cubit/maps_cubit.dart';
import 'package:travelhub/features/maps/presentation/widgets/search_results/not_empty/hotel_search_name_and_address.dart';
import 'package:flutter/material.dart';

class HotelSearchResults extends StatelessWidget {
  const HotelSearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    int length = locator<MapsCubit>().result.length >= 5
        ? 5
        : locator<MapsCubit>().result.length;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: AppHeight.h5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (int i = 0; i < length; i++)
              Padding(
                padding: EdgeInsets.symmetric(vertical: AppHeight.h5),
                child: GestureDetector(
                  onTap: () => locator<MapsCubit>().jumpToLocation(
                      coordinates: locator<MapsCubit>().result[i].coordinates!,
                      fromSearch: true,
                      context: context,
                      id: locator<MapsCubit>().result[i].code),
                  // Go.to(
                  //     context: context,
                  //     screen: HotelDetailsScreen(hotel: cubit.result[i])),
                  child: Container(
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Icon(
                          Icons.place,
                          color: AppColors.teal,
                          size: AppSize.s20,
                        ),
                        SizedBox(width: AppWidth.w10),
                        HotelSearchNameAndAddress(
                            hotel: locator<MapsCubit>().result[i]),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
