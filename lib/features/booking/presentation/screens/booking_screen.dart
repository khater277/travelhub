import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/shared_widgets/circle_indicator.dart';
import 'package:travelhub/core/shared_widgets/snack_bar.dart';
import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/booking/cubit/booking_cubit.dart';
import 'package:travelhub/features/booking/presentation/widgets/booking_error.dart';
import 'package:travelhub/features/booking/presentation/widgets/booking_success.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    locator<BookingCubit>().initTabController(this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookingCubit, BookingState>(
      listener: (context, state) {
        state.maybeWhen(
          updateMyBookingError: (errorMsg) => showSnackBar(
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
            centerTitle: false,
            title: Padding(
              padding: EdgeInsets.only(top: AppHeight.h10),
              child: LargeHeadText(
                text: "My Bookings",
                size: FontSize.s20,
              ),
            ),
          ),
          body: state.maybeWhen(
            getMyBookingLoading: () => Center(
              child: CustomCircleIndicator(
                size: AppSize.s40,
                color: AppColors.teal,
                strokeWidth: AppSize.s3,
              ),
            ),
            getMyBookingError: (errorMsg) =>
                BookingErrorWidget(errorMsg: errorMsg),
            // ignore: prefer_const_constructors
            orElse: () => BookingSuccessWidget(),
          ),
        );
      },
    );
  }
}
