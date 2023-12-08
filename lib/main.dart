import 'package:travelhub/app/app.dart';
import 'package:travelhub/app/bloc_observer.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/local_storage/bookings_storage.dart';
import 'package:travelhub/core/local_storage/facilities_storage.dart';
import 'package:travelhub/core/local_storage/hotels_storage.dart';
import 'package:travelhub/core/local_storage/location_storage.dart';
import 'package:travelhub/core/local_storage/user_storage.dart';
import 'package:travelhub/core/utils/app_functions.dart';
import 'package:travelhub/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupGetIt();
  await Hive.initFlutter();
  await locator<UserStorage>().init();
  await locator<HotelsStorage>().init();
  await locator<FacilitiesStorage>().init();
  await locator<LocationStorage>().init();
  await locator<BookingsStorage>().init();
  // await HiveHelper.init();

  Bloc.observer = MyBlocObserver();
  debugPrint(AppFunctions.generateSHA256());
  await AppFunctions.determinePosition();
  initializeDateFormatting();
  runApp(const MyApp());
}
