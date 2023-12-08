import 'package:travelhub/core/local_storage/keys.dart';
import 'package:travelhub/core/local_storage/local_storage.dart';
import 'package:travelhub/features/hotels/data/models/facilities_response_model/description.dart';
import 'package:travelhub/features/hotels/data/models/facilities_response_model/facilities_response_model.dart';
import 'package:travelhub/features/hotels/data/models/facilities_response_model/facility_info.dart';
import 'package:hive_flutter/hive_flutter.dart';

class FacilitiesStorage implements LocalStorage<FacilitiesResponseModel> {
  static Box<FacilitiesResponseModel>? _box;
  @override
  Future<void> delete({required String id}) => _box!.delete(id);

  @override
  List<FacilitiesResponseModel> getAllData() => _box!.values.toList();

  @override
  FacilitiesResponseModel? getData({required String id}) => _box!.get(id);

  @override
  bool hasData() => _box!.isNotEmpty;

  @override
  Future<void> init() async {
    if (!Hive.isAdapterRegistered(FacilitiesResponseModelAdapter().typeId)) {
      Hive.registerAdapter(FacilitiesResponseModelAdapter());
    }
    if (!Hive.isAdapterRegistered(FacilityInfoAdapter().typeId)) {
      Hive.registerAdapter(FacilityInfoAdapter());
    }
    if (!Hive.isAdapterRegistered(FacilityDescriptionAdapter().typeId)) {
      Hive.registerAdapter(FacilityDescriptionAdapter());
    }

    _box = await Hive.openBox(HiveKeys.facilities);
  }

  @override
  Future<void> saveData(
      {required String id, required FacilitiesResponseModel data}) async {
    await _box!.put(id, data);
    await _box!.flush();
  }
}
