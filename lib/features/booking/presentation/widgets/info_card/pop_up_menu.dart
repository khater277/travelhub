import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/features/booking/cubit/booking_cubit.dart';
import 'package:travelhub/features/booking/data/models/pop_up_info/pop_up_info.dart';
import 'package:travelhub/features/booking/domain/usecases/update_my_booking.dart';
import 'package:flutter/material.dart';

class BookingPopupMenu extends StatelessWidget {
  final String bookingId;
  final List<PopUpInfo> items;

  const BookingPopupMenu({
    super.key,
    required this.bookingId,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        icon: const Icon(Icons.more_horiz_outlined, color: AppColors.teal),
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Theme.of(context).hintColor,
            )),
        color: Theme.of(context).hintColor,
        elevation: 2,
        enabled: true,
        onSelected: (PopUpInfo value) {
          locator<BookingCubit>().updateMyBooking(
              params: UpdateMyBookingParams(
            bookingId: bookingId,
            bookingType: value.text!,
          ));
          debugPrint(value.text!.toLowerCase());
        },
        itemBuilder: (context) {
          return items.map((PopUpInfo choice) {
            return PopupMenuItem(
              value: choice,
              child: Row(
                children: [
                  Expanded(child: SmallHeadText(text: choice.text!)),
                  Icon(
                    choice.icon,
                    color: choice.color,
                  )
                ],
              ),
            );
          }).toList();
        });
  }
}
