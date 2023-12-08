import 'package:travelhub/core/local_storage/keys.dart';
import 'package:travelhub/core/local_storage/local_storage.dart';
import 'package:travelhub/features/booking/data/models/booking_details_model/booking_details_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class BookingsStorage implements LocalStorage<BookingDetailsModel> {
  static Box<BookingDetailsModel>? _box;
  @override
  Future<void> delete({required String id}) => _box!.delete(id);

  @override
  List<BookingDetailsModel> getAllData() => _box!.values.toList();

  @override
  BookingDetailsModel? getData({required String id}) => _box!.get(id);

  @override
  bool hasData() => _box!.isNotEmpty;

  @override
  Future<void> init() async {
    if (!Hive.isAdapterRegistered(BookingDetailsModelAdapter().typeId)) {
      Hive.registerAdapter(BookingDetailsModelAdapter());
    }
    _box = await Hive.openBox(HiveKeys.myBookings);
  }

  @override
  Future<void> saveData(
      {required String id, required BookingDetailsModel data}) async {
    await _box!.put(id, data);
    await _box!.flush();
  }
}
