import 'package:travelhub/core/errors/failures.dart';
import 'package:travelhub/features/booking/data/models/booking_details_model/booking_details_model.dart';
import 'package:travelhub/features/booking/domain/usecases/update_my_booking.dart';
import 'package:dartz/dartz.dart';

abstract class BookingRepository {
  Future<Either<Failure, List<BookingDetailsModel>>> getMyBookings();
  Future<Either<Failure, void>> updateMyBooking(
      {required UpdateMyBookingParams params});
}
