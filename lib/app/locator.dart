import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:travelhub/core/apis/booking/booking_api.dart';
import 'package:travelhub/core/apis/booking/booking_end_points.dart';
import 'package:travelhub/core/apis/maps/maps_api.dart';
import 'package:travelhub/core/apis/maps/maps_end_points.dart';
import 'package:travelhub/core/firebase/auth.dart';
import 'package:travelhub/core/firebase/database.dart';
import 'package:travelhub/core/firebase/storage.dart';
import 'package:travelhub/core/local_storage/bookings_storage.dart';
import 'package:travelhub/core/local_storage/facilities_storage.dart';
import 'package:travelhub/core/local_storage/hotels_storage.dart';
import 'package:travelhub/core/local_storage/location_storage.dart';
import 'package:travelhub/core/local_storage/user_storage.dart';
import 'package:travelhub/core/network/network_info.dart';
import 'package:travelhub/features/auth/cubit/login/login_cubit.dart';
import 'package:travelhub/features/auth/cubit/register/register_cubit.dart';
import 'package:travelhub/features/auth/data/datasources/remote/auth_remote_data_source.dart';
import 'package:travelhub/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:travelhub/features/auth/domain/repositories/auth_repository.dart';
import 'package:travelhub/features/auth/domain/usecases/facebook_sign_in_use_case.dart';
import 'package:travelhub/features/auth/domain/usecases/google_sign_in_use_case.dart';
import 'package:travelhub/features/auth/domain/usecases/login_use_case.dart';
import 'package:travelhub/features/auth/domain/usecases/register_use_case.dart';
import 'package:travelhub/features/available_rooms/cubit/available_rooms_cubit.dart';
import 'package:travelhub/features/available_rooms/data/datasources/available_rooms_data_source.dart';
import 'package:travelhub/features/available_rooms/data/repositories/available_rooms_repository_impl.dart';
import 'package:travelhub/features/available_rooms/domain/repositories/available_rooms_repository.dart';
import 'package:travelhub/features/available_rooms/domain/usecases/add_booking_to_fire_store_use_case.dart';
import 'package:travelhub/features/available_rooms/domain/usecases/check_rate_use_case.dart';
import 'package:travelhub/features/available_rooms/domain/usecases/create_booking_use_case.dart';
import 'package:travelhub/features/booking/cubit/booking_cubit.dart';
import 'package:travelhub/features/booking/data/datasources/booking_remote_data_source.dart';
import 'package:travelhub/features/booking/data/repositories/booking_repository_impl.dart';
import 'package:travelhub/features/booking/domain/repository/booking_repository.dart';
import 'package:travelhub/features/booking/domain/usecases/get_my_bookings_use_case.dart';
import 'package:travelhub/features/booking/domain/usecases/update_my_booking.dart';
import 'package:travelhub/features/create_booking/cubit/create_booking_cubit.dart';
import 'package:travelhub/features/create_booking/data/datasources/create_booking_remote_data_source.dart';
import 'package:travelhub/features/create_booking/data/repositories/create_booking_repository_impl.dart';
import 'package:travelhub/features/create_booking/domain/repositories/create_booking_repository.dart';
import 'package:travelhub/features/create_booking/domain/usecases/check_availability_use_case.dart';
import 'package:travelhub/features/home/cubit/home_cubit.dart';
import 'package:travelhub/features/hotels/cubit/hotels_cubit.dart';
import 'package:travelhub/features/hotels/data/datasources/hotels_remote_data_source.dart';
import 'package:travelhub/features/hotels/data/repositories/hotels_repository_impl.dart';
import 'package:travelhub/features/hotels/domain/repositories/hotels_repository.dart';
import 'package:travelhub/features/hotels/domain/usecases/facilities_use_case.dart';
import 'package:travelhub/features/hotels/domain/usecases/hotel_usecases.dart';
import 'package:travelhub/features/maps/cubit/maps_cubit.dart';
import 'package:travelhub/features/maps/data/datasources/maps_remote_data_source.dart';
import 'package:travelhub/features/maps/data/repositories/maps_repository_impl.dart';
import 'package:travelhub/features/maps/domain/repositories/maps_repository.dart';
import 'package:travelhub/features/maps/domain/usecases/places_suggestions_usecase.dart';
import 'package:travelhub/features/profile/cubit/profile_cubit.dart';
import 'package:travelhub/features/profile/data/datasources/profile_remote_data_source.dart';
import 'package:travelhub/features/profile/data/repository/profile_repository_impl.dart';
import 'package:travelhub/features/profile/domain/repository/profile_repository.dart';
import 'package:travelhub/features/profile/domain/usecases/re_auth_with_credential_use_case.dart';
import 'package:travelhub/features/profile/domain/usecases/update_password_usecase.dart';
import 'package:travelhub/features/profile/domain/usecases/update_profile_data_use_case.dart';
import 'package:travelhub/features/profile/domain/usecases/upload_file_use_case.dart';

final locator = GetIt.instance;

Future<void> setupGetIt() async {
  /// LOCAL STORAGE
  locator.registerLazySingleton<BookingsStorage>(() => BookingsStorage());
  locator.registerLazySingleton<FacilitiesStorage>(() => FacilitiesStorage());
  locator.registerLazySingleton<HotelsStorage>(() => HotelsStorage());
  locator.registerLazySingleton<LocationStorage>(() => LocationStorage());
  locator.registerLazySingleton<UserStorage>(() => UserStorage());

  /// CUBIT
  locator.registerLazySingleton<RegisterCubit>(
      () => RegisterCubit(registerUseCase: locator()));
  locator.registerLazySingleton<LoginCubit>(() => LoginCubit(
        loginUseCase: locator(),
        googleSignInUseCase: locator(),
        facebookSignInUseCase: locator(),
      ));
  locator.registerLazySingleton<HomeCubit>(() => HomeCubit());
  locator.registerLazySingleton<HotelsCubit>(() => HotelsCubit(
        getHotelsUseCase: locator(),
        getFacilitiesUseCase: locator(),
        facilitiesStorage: locator(),
        hotelsStorage: locator(),
      ));

  locator.registerLazySingleton<BookingCubit>(() => BookingCubit(
        getMyBookingsUseCase: locator(),
        updateMyBookingUseCase: locator(),
        bookingsStorage: locator(),
      ));
  locator.registerLazySingleton<CreateBookingCubit>(
      () => CreateBookingCubit(checkAvailabilityUseCase: locator()));
  locator.registerLazySingleton<AvailableRoomsCubit>(() => AvailableRoomsCubit(
        checkRateUseCase: locator(),
        createBookingUseCase: locator(),
        addBookingToFirestoreUsecase: locator(),
      ));
  locator.registerLazySingleton<ProfileCubit>(() => ProfileCubit(
        uploadFileUseCase: locator(),
        updateProfileDataUseCase: locator(),
        updatePasswordUseCase: locator(),
        reAuthWithCredentialUseCase: locator(),
      ));
  locator.registerLazySingleton<MapsCubit>(
      () => MapsCubit(placesSuggestionUsecase: locator()));

  /// DATA SOURCES
  locator.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(
            bookingApi: locator(),
            authViaFirebase: locator(),
            firebaseDatabase: locator(),
          ));
  locator.registerLazySingleton<HotelsRemoteDataSource>(
      () => HotelsRemoteDataSourceImpl(bookingApi: locator()));
  locator.registerLazySingleton<BookingRemoteDataSource>(
      () => BookingRemoteDataSourceImpl(firebaseDatabase: locator()));
  locator.registerLazySingleton<CreateBookingRemoteDataSource>(
      () => CreateBookingRemoteDataSourceImpl(bookingApi: locator()));
  locator.registerLazySingleton<AvailableRoomsRemoteDataSource>(
      () => AvailableRoomsRemoteDataSourceImpl(
            bookingApi: locator(),
            firebaseDatabase: locator(),
          ));
  locator.registerLazySingleton<MapsRemoteDataSource>(
      () => MapsRemoteDataSourceImpl(mapsApi: locator()));
  locator.registerLazySingleton<ProfileRemoteDataSource>(
      () => ProfileRemoteDataSourceImpl(
            firebaseMedia: locator(),
            firebaseDatabase: locator(),
            authViaFirebase: locator(),
          ));

  /// REPOSITORIES
  locator.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(
        networkInfo: locator(),
        authRemoteDataSource: locator(),
        userStorage: locator(),
      ));
  locator.registerLazySingleton<HotelsRepository>(() => HotelsRepositoryImpl(
        hotelsRemoteDataSource: locator(),
        networkInfo: locator(),
        facilitiesStorage: locator(),
        hotelsStorage: locator(),
      ));
  locator.registerLazySingleton<BookingRepository>(() => BookingRepositoryImpl(
        networkInfo: locator(),
        bookingRemoteDataSource: locator(),
        bookingsStorage: locator(),
      ));
  locator.registerLazySingleton<CreateBookingRepository>(() =>
      CreateBookingRepositoryImpl(
          networkInfo: locator(), createBookingRemoteDataSource: locator()));
  locator.registerLazySingleton<AvailableRoomsRepository>(() =>
      AvailableRoomsRepositoryImpl(
          networkInfo: locator(), availableRoomsRemoteDataSource: locator()));
  locator.registerLazySingleton<MapsRepository>(
      () => MapsRepositoryImpl(mapsRemoteDataSource: locator()));
  locator.registerLazySingleton<ProfileRepository>(() => ProfileRepositoryImpl(
        profileRemoteDataSource: locator(),
        networkInfo: locator(),
      ));

  /// USECASES
  locator.registerLazySingleton<RegisterUseCase>(
      () => RegisterUseCase(authRepository: locator()));
  locator.registerLazySingleton<LoginUseCase>(
      () => LoginUseCase(authRepository: locator()));
  locator.registerLazySingleton<GoogleSignInUseCase>(
      () => GoogleSignInUseCase(authRepository: locator()));
  locator.registerLazySingleton<FacebookSignInUseCase>(
      () => FacebookSignInUseCase(authRepository: locator()));
  locator.registerLazySingleton<GetHotelsUseCase>(
      () => GetHotelsUseCase(hotelsRepository: locator()));
  locator.registerLazySingleton<GetFacilitiesUseCase>(
      () => GetFacilitiesUseCase(hotelsRepository: locator()));
  locator.registerLazySingleton<CheckAvailabilityUseCase>(
      () => CheckAvailabilityUseCase(createBookingRepository: locator()));
  locator.registerLazySingleton<CheckRateUseCase>(
      () => CheckRateUseCase(availableRoomsRepository: locator()));
  locator.registerLazySingleton<CreateBookingUseCase>(
      () => CreateBookingUseCase(availableRoomsRepository: locator()));
  locator.registerLazySingleton<AddBookingToFirestoreUseCase>(
      () => AddBookingToFirestoreUseCase(availableRoomsRepository: locator()));
  locator.registerLazySingleton<GetMyBookingsUseCase>(
      () => GetMyBookingsUseCase(bookingRepository: locator()));
  locator.registerLazySingleton<UpdateMyBookingUseCase>(
      () => UpdateMyBookingUseCase(bookingRepository: locator()));
  locator.registerLazySingleton<PlacesSuggestionsUsecase>(
      () => PlacesSuggestionsUsecase(mapsRepository: locator()));
  locator.registerLazySingleton<UploadFileUseCase>(
      () => UploadFileUseCase(profileRepository: locator()));
  locator.registerLazySingleton<UpdateProfileDataUseCase>(
      () => UpdateProfileDataUseCase(profileRepository: locator()));
  locator.registerLazySingleton<UpdatePasswordUseCase>(
      () => UpdatePasswordUseCase(profileRepository: locator()));
  locator.registerLazySingleton<ReAuthWithCredentialUseCase>(
      () => ReAuthWithCredentialUseCase(profileRepository: locator()));

  /// APIs
  locator.registerLazySingleton<BookingApi>(
      () => BookingApi(locator(instanceName: 'booking-dio')));
  locator.registerLazySingleton<MapsApi>(
      () => MapsApi(locator(instanceName: 'maps-dio')));

  locator.registerLazySingleton<Dio>(
    () => _createAndSetupBookingDio(),
    instanceName: 'booking-dio',
  );
  locator.registerLazySingleton<Dio>(
    () => _createAndSetupMapsDio(),
    instanceName: 'maps-dio',
  );

  /// FIREBASE
  locator.registerLazySingleton<AuthViaFirebase>(() => AuthViaFirebaseImpl());
  locator.registerLazySingleton<FirebaseDatabase>(() => FirebaseDatabaseImpl());
  locator.registerLazySingleton<FirebaseMedia>(() => FirebaseMediaImpl());

  /// NETWORK INFO
  locator.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: locator()));
  locator.registerLazySingleton<InternetConnectionChecker>(
      () => InternetConnectionChecker());
}

Dio _createAndSetupBookingDio() {
  Dio dio = Dio();

  dio.options
    ..baseUrl = BookingEndPoints.baseUrl
    ..responseType = ResponseType.plain
    ..headers = {
      'Api-key': BookingEndPoints.apiKey,
      // 'X-Signature': _generateSHA256(),
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Accept-Encoding': 'gzip',
    }
    ..connectTimeout = const Duration(seconds: 25)
    ..followRedirects = false;

  dio.interceptors.add(
    LogInterceptor(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
        error: true),
  );

  return dio;
}

Dio _createAndSetupMapsDio() {
  Dio dio = Dio();

  dio.options
    ..baseUrl = MapsEndPoints.baseUrl
    ..responseType = ResponseType.plain
    ..connectTimeout = const Duration(seconds: 20)
    ..followRedirects = false;

  dio.interceptors.add(
    LogInterceptor(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
        error: true),
  );

  return dio;
}
