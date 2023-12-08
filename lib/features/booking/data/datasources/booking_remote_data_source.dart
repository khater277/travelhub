import 'package:travelhub/core/firebase/database.dart';
import 'package:travelhub/features/booking/data/models/booking_details_model/booking_details_model.dart';
import 'package:travelhub/features/booking/domain/usecases/update_my_booking.dart';

abstract class BookingRemoteDataSource {
  Future<List<BookingDetailsModel>> getMyBookings();
  Future<void> updateMyBooking({required UpdateMyBookingParams params});
}

class BookingRemoteDataSourceImpl implements BookingRemoteDataSource {
  final FirebaseDatabase firebaseDatabase;

  BookingRemoteDataSourceImpl({required this.firebaseDatabase});
  @override
  Future<List<BookingDetailsModel>> getMyBookings() {
    return firebaseDatabase.getMyBookings();
  }

  @override
  Future<void> updateMyBooking({required UpdateMyBookingParams params}) {
    return firebaseDatabase.updateMyBooking(params: params);
  }
}
