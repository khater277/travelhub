import 'package:hive_flutter/hive_flutter.dart';
import 'package:travelhub/core/local_storage/keys.dart';
import 'package:travelhub/core/local_storage/local_storage.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/coordinates.dart';

class LocationStorage implements LocalStorage<Coordinates> {
  static Box<Coordinates>? _box;
  @override
  Future<void> delete({required String id}) => _box!.delete(id);

  @override
  List<Coordinates> getAllData() => _box!.values.toList();

  @override
  getData({required String id}) => _box!.get(id);

  @override
  bool hasData() => _box!.isNotEmpty;

  @override
  Future<void> init() async {
    if (!Hive.isAdapterRegistered(CoordinatesAdapter().typeId)) {
      Hive.registerAdapter(CoordinatesAdapter());
    }
    _box = await Hive.openBox(HiveKeys.userLocation);
  }

  @override
  Future<void> saveData({required String id, required Coordinates data}) async {
    await _box!.put(id, data);
    await _box!.flush();
  }
}
