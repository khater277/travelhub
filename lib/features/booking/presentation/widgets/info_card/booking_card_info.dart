import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:travelhub/core/shared_widgets/circle_indicator.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/core/utils/font_styles.dart';
import 'package:travelhub/features/booking/cubit/booking_cubit.dart';
import 'package:travelhub/features/booking/data/models/booking_details_model/booking_details_model.dart';
import 'package:travelhub/features/booking/presentation/widgets/info_card/hotel_name_address_and_rating.dart';
import 'package:travelhub/features/booking/presentation/widgets/info_card/image_and_pop_up_menu.dart';
import 'package:travelhub/features/booking/presentation/widgets/info_card/price_per_night.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/hotel.dart';

class BookingCardInfo extends StatelessWidget {
  final BookingDetailsModel bookingDetailsModel;
  final Hotel hotel;
  const BookingCardInfo({
    super.key,
    required this.bookingDetailsModel,
    required this.hotel,
  });

  String getFormattedDate({required String date}) {
    return DateFormat.MMMd().format(DateTime.parse(date));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppWidth.w12),
      child: Column(
        children: [
          Text(
            "${getFormattedDate(date: bookingDetailsModel.checkIn!)} - "
            "${getFormattedDate(date: bookingDetailsModel.checkOut!)}, "
            "1 Room 2 People",
            // "01 Dec - 05 Dec, 1 Room 2 People",
            style: getMediumStyle(
              fontColor: Theme.of(context).focusColor,
              // fontSize: FontSize.s12,
            ),
          ),
          SizedBox(height: AppHeight.h15),
          ClipRRect(
            borderRadius: BorderRadius.circular(AppSize.s25),
            child: Container(
              width: double.infinity,
              height: AppHeight.h230,
              color: Theme.of(context).cardTheme.color,
              child: BlocBuilder<BookingCubit, BookingState>(
                builder: (context, state) {
                  return state ==
                          BookingState.updateMyBookingLoading(
                              bookingDetailsModel.bookingId!)
                      ? Center(
                          child: CustomCircleIndicator(
                          size: AppSize.s35,
                          strokeWidth: AppSize.s3,
                          // strokeWidth: AppSize.s2,
                        ))
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BookingImageAndPopUpMenu(
                                hotel: hotel,
                                bookingDetailsModel: bookingDetailsModel),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: AppWidth.w12,
                                  vertical: AppHeight.h8,
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: BookingHotelNameAddressAndRating(
                                          hotel: hotel),
                                    ),
                                    PricePerNight(
                                        price: bookingDetailsModel.price!),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
