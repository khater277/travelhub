import 'package:travelhub/core/apis/booking/booking_api.dart';
import 'package:travelhub/core/utils/app_functions.dart';
import 'package:travelhub/features/create_booking/data/models/body/check_availability_body.dart';
import 'package:travelhub/features/create_booking/data/models/response/check_availability_response.dart';

abstract class CreateBookingRemoteDataSource {
  Future<CheckAvailabilityResponse> checkAvailability({
    required CheckAvailabilityBody checkAvailabilityBody,
  });
}

class CreateBookingRemoteDataSourceImpl
    implements CreateBookingRemoteDataSource {
  final BookingApi bookingApi;

  CreateBookingRemoteDataSourceImpl({required this.bookingApi});
  @override
  Future<CheckAvailabilityResponse> checkAvailability(
      {required CheckAvailabilityBody checkAvailabilityBody}) {
    return bookingApi.checkAvailability(
      checkAvailabilityBody: checkAvailabilityBody.toJson(),
      signature: AppFunctions.generateSHA256(),
    );
  }
}
