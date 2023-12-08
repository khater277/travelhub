import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/local_storage/hotels_storage.dart';
import 'package:travelhub/core/local_storage/keys.dart';
import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/booking/cubit/booking_cubit.dart';
import 'package:travelhub/features/booking/presentation/widgets/info_card/booking_card_info.dart';
import 'package:flutter/material.dart';

class BookingsList extends StatelessWidget {
  const BookingsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: AppHeight.h15),
        child: TabBarView(
            controller: locator<BookingCubit>().tabController,
            physics: const BouncingScrollPhysics(),
            children: locator<BookingCubit>().bookings.map((element) {
              if (element.list!.isNotEmpty) {
                return ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemCount: element.list!.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(height: AppHeight.h30),
                  itemBuilder: (BuildContext context, int index) {
                    return BookingCardInfo(
                      bookingDetailsModel: element.list![index],
                      hotel: locator<HotelsStorage>()
                          .getData(id: HiveKeys.allHotelsData)!
                          .hotels!
                          .firstWhere((hotel) =>
                              hotel.code == element.list![index].hotelId),
                    );
                  },
                );
              } else {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.bookmark_outline,
                        size: AppSize.s100,
                        color: Theme.of(context).highlightColor,
                      ),
                      SizedBox(
                        height: AppHeight.h2,
                      ),
                      SecondaryText(
                        text: "There is no bookings yet.",
                        size: FontSize.s16,
                        maxLines: 2,
                        center: true,
                        isLight: true,
                      ),
                    ],
                  ),
                );
              }
            }).toList()),
      ),
    );
  }
}
