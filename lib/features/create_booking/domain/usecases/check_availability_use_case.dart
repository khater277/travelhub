import 'package:travelhub/core/base_usecase/base_usecase.dart';
import 'package:travelhub/core/errors/failures.dart';
import 'package:travelhub/features/create_booking/data/models/body/check_availability_body.dart';
import 'package:travelhub/features/create_booking/data/models/response/check_availability_response.dart';
import 'package:travelhub/features/create_booking/domain/repositories/create_booking_repository.dart';
import 'package:dartz/dartz.dart';

class CheckAvailabilityUseCase
    implements BaseUseCase<CheckAvailabilityResponse, CheckAvailabilityBody> {
  final CreateBookingRepository createBookingRepository;

  CheckAvailabilityUseCase({required this.createBookingRepository});
  @override
  Future<Either<Failure, CheckAvailabilityResponse>> call(
      CheckAvailabilityBody params) {
    return createBookingRepository.checkAvailability(
        checkAvailabilityBody: params);
  }
}
