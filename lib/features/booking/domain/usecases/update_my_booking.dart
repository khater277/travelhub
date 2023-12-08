import 'package:travelhub/core/base_usecase/base_usecase.dart';
import 'package:travelhub/core/errors/failures.dart';
import 'package:travelhub/features/booking/domain/repository/booking_repository.dart';
import 'package:dartz/dartz.dart';

class UpdateMyBookingUseCase
    implements BaseUseCase<void, UpdateMyBookingParams> {
  final BookingRepository bookingRepository;

  UpdateMyBookingUseCase({required this.bookingRepository});
  @override
  Future<Either<Failure, void>> call(UpdateMyBookingParams params) {
    return bookingRepository.updateMyBooking(params: params);
  }
}

class UpdateMyBookingParams {
  final String bookingId;
  final String bookingType;

  UpdateMyBookingParams({required this.bookingId, required this.bookingType});
}
