import 'package:travelhub/features/available_rooms/presentation/widgets/available_room_icon_and_data.dart';
import 'package:travelhub/features/create_booking/data/models/body/check_availability_body.dart';
import 'package:flutter/material.dart';

class NumberOfAdultsAndCheckOut extends StatelessWidget {
  const NumberOfAdultsAndCheckOut({
    super.key,
    required this.checkAvailabilityBody,
  });

  final CheckAvailabilityBody checkAvailabilityBody;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AvailableRoomIconAndData(
              icon: Icons.people_outline,
              data: checkAvailabilityBody.occupancies![0].adults!.toString()),
        ),
        Expanded(
          child: AvailableRoomIconAndData(
            icon: Icons.output_outlined,
            data: checkAvailabilityBody.stay!.checkOut!,
          ),
        ),
      ],
    );
  }
}
