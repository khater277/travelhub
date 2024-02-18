import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/config/app_theme.dart';
import 'package:travelhub/features/auth/cubit/login/login_cubit.dart';
import 'package:travelhub/features/auth/cubit/register/register_cubit.dart';
import 'package:travelhub/features/auth/presentation/screens/login_screen.dart';
import 'package:travelhub/features/available_rooms/cubit/available_rooms_cubit.dart';
import 'package:travelhub/features/booking/cubit/booking_cubit.dart';
import 'package:travelhub/features/create_booking/cubit/create_booking_cubit.dart';
import 'package:travelhub/features/home/cubit/home_cubit.dart';
import 'package:travelhub/features/home/presentation/screens/home_screen.dart';
import 'package:travelhub/features/hotels/cubit/hotels_cubit.dart';
import 'package:travelhub/features/maps/cubit/maps_cubit.dart';
import 'package:travelhub/features/profile/cubit/profile_cubit.dart';
import 'package:travelhub/map.dart';

class Sp {
  static SharedPreferences? sp;
  static Future<void> init() async {
    sp = await SharedPreferences.getInstance();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 667),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (BuildContext context) => locator<RegisterCubit>(),
              ),
              BlocProvider(
                create: (BuildContext context) => locator<LoginCubit>(),
              ),
              BlocProvider(
                  create: (BuildContext context) =>
                      locator<HotelsCubit>()..getInit()),
              BlocProvider(
                create: (BuildContext context) => locator<HomeCubit>(),
              ),
              BlocProvider(
                create: (BuildContext context) =>
                    locator<BookingCubit>()..getMyBookings(),
              ),
              BlocProvider(
                create: (BuildContext context) => locator<CreateBookingCubit>(),
              ),
              BlocProvider(
                create: (BuildContext context) =>
                    locator<AvailableRoomsCubit>(),
              ),
              BlocProvider(
                create: (BuildContext context) => locator<ProfileCubit>(),
              ),
              BlocProvider(
                create: (BuildContext context) => locator<MapsCubit>()
                  // ..changeMapScrollPosition(context)
                  ..setMarkers(context: context),
              ),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: AppTheme.lightTheme(),
              home:
                  // locator<UserStorage>().getData(id: HiveKeys.currentUser) ==
                  //         null
                  Sp.sp!.getBool('login') != true
                      ? const LoginScreen()
                      : const HomeScreen(),
              // const MapScreen(),
              // const LoginScreen(),
              // const MapSample(),
            ),
          );
        });
  }
}
