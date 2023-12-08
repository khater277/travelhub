import 'package:flutter/material.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/hotels/cubit/hotels_cubit.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotel_details/app_bar/app_bar.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotel_details/body/hotel_description.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotel_details/body/hotel_details_head.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotel_details/body/hotel_facilities.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotel_details/body/hotel_photos/hotel_photos.dart';

class HotelDetailsScreen extends StatefulWidget {
  final Hotel hotel;
  const HotelDetailsScreen({super.key, required this.hotel});

  @override
  State<HotelDetailsScreen> createState() => _HotelDetailsScreenState();
}

class _HotelDetailsScreenState extends State<HotelDetailsScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      locator<HotelsCubit>().initHotelDetailsScreen(
          height: MediaQuery.sizeOf(context).height * 0.75);
    });

    super.initState();
  }

  @override
  void dispose() {
    locator<HotelsCubit>().disposeHotelDetailsScreen();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: locator<HotelsCubit>().hotelDetailsScrollController!,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        slivers: [
          HotelDetailsAppBar(hotel: widget.hotel),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppWidth.w10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: AppHeight.h20),
                  HotelDetailsHead(hotel: widget.hotel),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: AppHeight.h10),
                    child: Divider(
                      thickness: 0.7,
                      color: AppColors.grey.withOpacity(0.2),
                    ),
                  ),
                  HotelDescription(
                    description: widget.hotel.description!.content!,
                  ),
                  SizedBox(height: AppHeight.h20),
                  HotelPhotos(
                    images: widget.hotel.images!.toSet().toList(),
                  ),
                  SizedBox(height: AppHeight.h50),
                  HotelFacilities(hotelFacilities: widget.hotel.facilities!),
                  SizedBox(height: AppHeight.h50),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
