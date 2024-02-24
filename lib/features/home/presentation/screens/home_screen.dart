import 'package:travelhub/app/locator.dart';
import 'package:travelhub/features/booking/cubit/booking_cubit.dart';
import 'package:travelhub/features/home/cubit/home_cubit.dart';
import 'package:travelhub/features/home/presentation/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelhub/features/hotels/cubit/hotels_cubit.dart';

class HomeScreen extends StatefulWidget {
  final bool reAuth;
  const HomeScreen({super.key, required this.reAuth});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  void initState() {
    if (widget.reAuth) {
      locator<BookingCubit>().getMyBookings();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        state.maybeWhen(
          changeNavBarState: (index) => this.index = index,
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: locator<HomeCubit>().pages[index],
          extendBody: true,
          bottomNavigationBar: AppBottomNavBar(index: index),
        );
      },
    );
  }
}
