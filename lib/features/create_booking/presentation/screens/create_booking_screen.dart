// ignore_for_file: prefer_const_constructors

import 'package:travelhub/app/locator.dart';
import 'package:travelhub/config/navigation.dart';
import 'package:travelhub/core/shared_widgets/button.dart';
import 'package:travelhub/core/shared_widgets/snack_bar.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/available_rooms/presentation/screens/available_rooms_screen.dart';
import 'package:travelhub/features/create_booking/cubit/create_booking_cubit.dart';
import 'package:travelhub/features/create_booking/presentation/widgets/create_booking_adults_and_children.dart';
import 'package:travelhub/features/create_booking/presentation/widgets/create_booking_check_in_and_out.dart';
import 'package:travelhub/features/create_booking/presentation/widgets/create_booking_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateBookingScreen extends StatefulWidget {
  final int hotelId;
  const CreateBookingScreen({super.key, required this.hotelId});

  @override
  State<CreateBookingScreen> createState() => _CreateBookingScreenState();
}

class _CreateBookingScreenState extends State<CreateBookingScreen> {
  @override
  void initState() {
    locator<CreateBookingCubit>().initCreateBookingControllers();
    super.initState();
  }

  @override
  void dispose() {
    locator<CreateBookingCubit>().disposeCreateBookingControllers();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateBookingCubit, CreateBookingState>(
      listener: (context, state) {
        state.maybeWhen(
          noAvailableRooms: () => showSnackBar(
            context: context,
            message: "Sorry , There is no available rooms for that reservation",
            color: AppColors.red,
          ),
          findAvailableRooms: (availableRooms, checkAvailabilityBody, holder) {
            Go.to(
                context: context,
                screen: AvailableRoomsScreen(
                  availableRooms: availableRooms,
                  checkAvailabilityBody: checkAvailabilityBody,
                  holder: holder,
                  hotelId: widget.hotelId,
                ));
          },
          checkAvailableRoomsError: (errorMsg) => showSnackBar(
            context: context,
            message: errorMsg,
            color: AppColors.red,
          ),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () => Go.back(context: context),
              icon: const Icon(Icons.arrow_back_ios),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppWidth.w20),
            child: Form(
              key: locator<CreateBookingCubit>().formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CreateBookingName(),
                  SizedBox(height: AppHeight.h10),
                  CreateBookingCheckInAndOut(),
                  SizedBox(height: AppHeight.h10),
                  CreateBookingAdultsAndChildren(),
                  SizedBox(height: AppHeight.h40),
                  CustomButton(
                    loadingCondition: state ==
                        const CreateBookingState.checkAvailableRoomsLoading(),
                    text: "Continue",
                    onPressed: () {
                      if (locator<CreateBookingCubit>()
                          .formKey
                          .currentState!
                          .validate()) {
                        locator<CreateBookingCubit>()
                            .checkAvailableRooms(hotelId: widget.hotelId);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
