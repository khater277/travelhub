import 'package:travelhub/config/navigation.dart';
import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/available_rooms/data/models/create_booking/body/holder.dart';
import 'package:travelhub/features/available_rooms/presentation/screens/confirm_booking_screen.dart';
import 'package:travelhub/features/available_rooms/presentation/widgets/number_of_children_and_price.dart';
import 'package:travelhub/features/available_rooms/presentation/widgets/number_of_rooms_and_check_in.dart';
import 'package:travelhub/features/available_rooms/presentation/widgets/number_of_adults_and_check_out.dart';
import 'package:travelhub/features/create_booking/data/models/body/check_availability_body.dart';
import 'package:travelhub/features/create_booking/data/models/response/rate.dart';
import 'package:flutter/material.dart';

class AvailableRoomCard extends StatelessWidget {
  final CheckAvailabilityBody checkAvailabilityBody;
  final AvailableRate availableRate;
  final Holder? holder;
  final String roomName;
  final int hotelId;

  const AvailableRoomCard({
    super.key,
    required this.checkAvailabilityBody,
    required this.availableRate,
    this.holder,
    required this.roomName,
    required this.hotelId,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppWidth.w10),
      child: GestureDetector(
        onTap: () => holder == null
            ? null
            : Go.to(
                context: context,
                screen: ConfirmBookingScreen(
                  checkAvailabilityBody: checkAvailabilityBody,
                  availableRate: availableRate,
                  holder: holder!,
                  roomName: roomName,
                  hotelId: hotelId,
                )),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardTheme.color,
            borderRadius: BorderRadius.circular(AppSize.s20),
          ),
          width: double.infinity,
          // height: AppHeight.h140,
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: AppHeight.h15, horizontal: AppWidth.w20),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      NumberOfRoomsAndCheckIn(
                          checkAvailabilityBody: checkAvailabilityBody),
                      SizedBox(height: AppHeight.h10),
                      NumberOfAdultsAndCheckOut(
                          checkAvailabilityBody: checkAvailabilityBody),
                      SizedBox(height: AppHeight.h10),
                      NumberOfChildrenAndPrice(
                          checkAvailabilityBody: checkAvailabilityBody,
                          availableRate: availableRate),
                      SizedBox(height: AppHeight.h10),
                      SecondaryText(
                        text: "Board Name : ${availableRate.boardName}",
                        maxLines: 3,
                        size: FontSize.s14,
                      )
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Theme.of(context).highlightColor,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
