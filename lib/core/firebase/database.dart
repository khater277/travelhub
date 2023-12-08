import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/firebase/collections_keys.dart';
import 'package:travelhub/core/local_storage/keys.dart';
import 'package:travelhub/core/local_storage/user_storage.dart';
import 'package:travelhub/features/auth/data/models/current_user/current_user.dart';
import 'package:travelhub/features/booking/data/models/booking_details_model/booking_details_model.dart';
import 'package:travelhub/features/booking/domain/usecases/update_my_booking.dart';

abstract class FirebaseDatabase {
  Future<void> addUserToFirestore({required CurrentUser user});
  Future<void> addBookingToFirestore({
    required String bookingId,
    required String userId,
    required BookingDetailsModel bookingDetails,
  });
  Future<CurrentUser> getCurrentUser({required String uid});
  Future<List<BookingDetailsModel>> getMyBookings();
  Future<void> updateMyBooking({required UpdateMyBookingParams params});
  Future<void> updateProfileData({required Map<String, dynamic> updatedData});
}

class FirebaseDatabaseImpl implements FirebaseDatabase {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  @override
  Future<void> addUserToFirestore({required CurrentUser user}) {
    return _db.collection(Collections.users).doc(user.uid!).set(user.toJson());
  }

  @override
  Future<void> addBookingToFirestore({
    required String bookingId,
    required String userId,
    required BookingDetailsModel bookingDetails,
  }) async {
    return _db
        .collection(Collections.users)
        .doc(userId)
        .collection(Collections.bookings)
        .doc(bookingId)
        .set(bookingDetails.toJson());
  }

  @override
  Future<CurrentUser> getCurrentUser({required String uid}) async {
    final result = await _db.collection(Collections.users).doc(uid).get();
    CurrentUser user = CurrentUser.fromJson(result.data()!);
    return user;
  }

  @override
  Future<List<BookingDetailsModel>> getMyBookings() async {
    List<BookingDetailsModel> result = [];
    final response = await _db
        .collection(Collections.users)
        .doc(locator<UserStorage>().getData(id: HiveKeys.currentUser)!.uid)
        .collection(Collections.bookings)
        .get();
    final list = response.docs;
    for (var element in list) {
      result.add(BookingDetailsModel.fromJson(element.data()));
    }
    return result;
  }

  @override
  Future<void> updateMyBooking({required UpdateMyBookingParams params}) async {
    final String type = params.bookingType;
    return await _db
        .collection(Collections.users)
        .doc(locator<UserStorage>().getData(id: HiveKeys.currentUser)!.uid)
        .collection(Collections.bookings)
        .doc(params.bookingId)
        .update({'type': type});
  }

  @override
  Future<void> updateProfileData(
      {required Map<String, dynamic> updatedData}) async {
    _db
        .collection(Collections.users)
        .doc(locator<UserStorage>().getData(id: HiveKeys.currentUser)!.uid)
        .update(updatedData);
  }
}
