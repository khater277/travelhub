import 'package:travelhub/core/base_usecase/base_usecase.dart';
import 'package:travelhub/core/errors/failures.dart';
import 'package:travelhub/features/booking/data/models/booking_details_model/booking_details_model.dart';
import 'package:travelhub/features/booking/domain/repository/booking_repository.dart';
import 'package:travelhub/features/hotels/domain/usecases/hotel_usecases.dart';
import 'package:dartz/dartz.dart';

class GetMyBookingsUseCase
    implements BaseUseCase<List<BookingDetailsModel>, NoParams> {
  final BookingRepository bookingRepository;

  GetMyBookingsUseCase({required this.bookingRepository});
  @override
  Future<Either<Failure, List<BookingDetailsModel>>> call(params) {
    return bookingRepository.getMyBookings();
  }
}
