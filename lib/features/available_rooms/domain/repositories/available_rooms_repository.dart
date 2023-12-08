import 'package:travelhub/core/errors/failures.dart';
import 'package:travelhub/features/available_rooms/data/models/check_rate/body/check_rate_body.dart';
import 'package:travelhub/features/available_rooms/data/models/check_rate/response/check_rate_response.dart';
import 'package:travelhub/features/available_rooms/data/models/create_booking/body/create_booking_body.dart';
import 'package:travelhub/features/available_rooms/data/models/create_booking/response/create_booking_response.dart';
import 'package:travelhub/features/booking/data/models/booking_details_model/booking_details_model.dart';
import 'package:dartz/dartz.dart';

abstract class AvailableRoomsRepository {
  Future<Either<Failure, CheckRateResponse>> checkRate({
    required CheckRateBody checkRateBody,
  });
  Future<Either<Failure, CreateBookingResponse>> createBooking({
    required CreateBookingBody createBookingBody,
  });
  Future<Either<Failure, void>> addBookingToFirestore({
    required String bookingId,
    required String userId,
    required BookingDetailsModel bookingDetails,
  });
}
