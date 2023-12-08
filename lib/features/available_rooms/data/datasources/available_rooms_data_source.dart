import 'package:travelhub/core/apis/booking/booking_api.dart';
import 'package:travelhub/core/firebase/database.dart';
import 'package:travelhub/core/utils/app_functions.dart';
import 'package:travelhub/features/available_rooms/data/models/check_rate/body/check_rate_body.dart';
import 'package:travelhub/features/available_rooms/data/models/check_rate/response/check_rate_response.dart';
import 'package:travelhub/features/available_rooms/data/models/create_booking/body/create_booking_body.dart';
import 'package:travelhub/features/available_rooms/data/models/create_booking/response/create_booking_response.dart';
import 'package:travelhub/features/booking/data/models/booking_details_model/booking_details_model.dart';

abstract class AvailableRoomsRemoteDataSource {
  Future<CheckRateResponse> checkRate({
    required CheckRateBody checkRateBody,
  });
  Future<CreateBookingResponse> createBooking({
    required CreateBookingBody createBookingBody,
  });
  Future<void> addBookingToFirestore({
    required String bookingId,
    required String userId,
    required BookingDetailsModel bookingDetails,
  });
}

class AvailableRoomsRemoteDataSourceImpl
    implements AvailableRoomsRemoteDataSource {
  final BookingApi bookingApi;
  final FirebaseDatabase firebaseDatabase;

  AvailableRoomsRemoteDataSourceImpl({
    required this.bookingApi,
    required this.firebaseDatabase,
  });

  @override
  Future<CheckRateResponse> checkRate({required CheckRateBody checkRateBody}) {
    return bookingApi.checkRate(
      checkRateBody: checkRateBody.toJson(),
      signature: AppFunctions.generateSHA256(),
    );
  }

  @override
  Future<CreateBookingResponse> createBooking(
      {required CreateBookingBody createBookingBody}) {
    return bookingApi.createBooking(
      createBookingBody: createBookingBody.toJson(),
      signature: AppFunctions.generateSHA256(),
    );
  }

  @override
  Future<void> addBookingToFirestore(
      {required String bookingId,
      required String userId,
      required BookingDetailsModel bookingDetails}) {
    return firebaseDatabase.addBookingToFirestore(
      bookingId: bookingId,
      userId: userId,
      bookingDetails: bookingDetails,
    );
  }
}
