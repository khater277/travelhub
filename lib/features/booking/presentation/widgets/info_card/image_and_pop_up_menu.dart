import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/shared_widgets/network_image.dart';
import 'package:travelhub/core/utils/app_strings.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/booking/cubit/booking_cubit.dart';
import 'package:travelhub/features/booking/data/models/booking_details_model/booking_details_model.dart';
import 'package:travelhub/features/booking/presentation/widgets/info_card/pop_up_menu.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:flutter/material.dart';

class BookingImageAndPopUpMenu extends StatelessWidget {
  const BookingImageAndPopUpMenu({
    super.key,
    required this.hotel,
    required this.bookingDetailsModel,
  });

  final Hotel hotel;
  final BookingDetailsModel bookingDetailsModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        SizedBox(
          width: double.infinity,
          height: AppHeight.h150,
          child: CustomNetworkImage(
            imageUrl: hotel.images![0].path == null || hotel.images == null
                ? ""
                : AppStrings.imagesUrl + hotel.images![0].path!,
            fit: BoxFit.fill,
          ),
        ),
        BookingPopupMenu(
          bookingId: bookingDetailsModel.bookingId!,
          items: locator<BookingCubit>()
              .bookings[locator<BookingCubit>().tabController!.index]
              .popUpList!,
        ),
      ],
    );
  }
}
