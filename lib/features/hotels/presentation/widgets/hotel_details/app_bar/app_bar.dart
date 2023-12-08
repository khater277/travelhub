import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotel_details/app_bar/back_icon.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotel_details/app_bar/flexible_space/flexible_space_content.dart';
import 'package:flutter/material.dart';

class HotelDetailsAppBar extends StatelessWidget {
  final Hotel hotel;

  const HotelDetailsAppBar({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: MediaQuery.of(context).size.height,
      collapsedHeight: AppHeight.h100,
      leading: const HotelDetailsBackIcon(),
      flexibleSpace: FlexibleSpaceContent(hotel: hotel),
    );
  }
}
