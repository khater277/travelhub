import 'package:travelhub/features/available_rooms/presentation/widgets/available_room_icon_and_data.dart';
import 'package:travelhub/features/create_booking/data/models/body/check_availability_body.dart';
import 'package:flutter/material.dart';

class NumberOfRoomsAndCheckIn extends StatelessWidget {
  const NumberOfRoomsAndCheckIn({
    super.key,
    required this.checkAvailabilityBody,
  });

  final CheckAvailabilityBody checkAvailabilityBody;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: AvailableRoomIconAndData(
            icon: Icons.bedroom_parent_outlined,
            data: "1",
          ),
        ),
        Expanded(
          child: AvailableRoomIconAndData(
            icon: Icons.input_outlined,
            data: checkAvailabilityBody.stay!.checkIn!,
          ),
        ),
      ],
    );
  }
}
