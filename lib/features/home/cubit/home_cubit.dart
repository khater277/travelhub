import 'package:travelhub/features/booking/presentation/screens/booking_screen.dart';
import 'package:travelhub/features/hotels/presentation/screens/hotels_screen.dart';
import 'package:travelhub/features/profile/presentation/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());

  List<Widget> pages = [
    const HotelsScreen(),
    const BookingScreen(),
    const ProfileScreen(),
  ];

  void changeNavBar({required int index}) {
    emit(HomeState.changeNavBarState(index));
  }
}
