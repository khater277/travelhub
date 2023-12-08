import 'package:travelhub/core/local_storage/keys.dart';
import 'package:travelhub/core/local_storage/local_storage.dart';
import 'package:travelhub/features/auth/data/models/current_user/current_user.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/address.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/city.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/coordinates.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/description.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/facility.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/hotels_response_model.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/image.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/name.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/phone.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/rooms/room.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/rooms/room_facility.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/rooms/room_stay.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/rooms/room_stay_facility.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/rooms/rooms.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HotelsStorage implements LocalStorage<HotelsResponseModel> {
  static Box<HotelsResponseModel>? _box;
  @override
  Future<void> delete({required String id}) => _box!.delete(id);

  @override
  List<HotelsResponseModel> getAllData() => _box!.values.toList();

  @override
  HotelsResponseModel? getData({required String id}) => _box!.get(id);

  @override
  bool hasData() => _box!.isNotEmpty;

  @override
  Future<void> init() async {
    if (!Hive.isAdapterRegistered(CurrentUserAdapter().typeId)) {
      Hive.registerAdapter(CurrentUserAdapter());
    }
    if (!Hive.isAdapterRegistered(HotelsResponseModelAdapter().typeId)) {
      Hive.registerAdapter(HotelsResponseModelAdapter());
    }
    if (!Hive.isAdapterRegistered(AddressAdapter().typeId)) {
      Hive.registerAdapter(AddressAdapter());
    }
    if (!Hive.isAdapterRegistered(CityAdapter().typeId)) {
      Hive.registerAdapter(CityAdapter());
    }
    if (!Hive.isAdapterRegistered(CoordinatesAdapter().typeId)) {
      Hive.registerAdapter(CoordinatesAdapter());
    }
    if (!Hive.isAdapterRegistered(DescriptionAdapter().typeId)) {
      Hive.registerAdapter(DescriptionAdapter());
    }
    if (!Hive.isAdapterRegistered(FacilityAdapter().typeId)) {
      Hive.registerAdapter(FacilityAdapter());
    }
    if (!Hive.isAdapterRegistered(HotelAdapter().typeId)) {
      Hive.registerAdapter(HotelAdapter());
    }
    if (!Hive.isAdapterRegistered(ImageAdapter().typeId)) {
      Hive.registerAdapter(ImageAdapter());
    }
    if (!Hive.isAdapterRegistered(NameAdapter().typeId)) {
      Hive.registerAdapter(NameAdapter());
    }
    if (!Hive.isAdapterRegistered(PhoneAdapter().typeId)) {
      Hive.registerAdapter(PhoneAdapter());
    }
    if (!Hive.isAdapterRegistered(RoomFacilityAdapter().typeId)) {
      Hive.registerAdapter(RoomFacilityAdapter());
    }
    if (!Hive.isAdapterRegistered(RoomStayFacilityAdapter().typeId)) {
      Hive.registerAdapter(RoomStayFacilityAdapter());
    }
    if (!Hive.isAdapterRegistered(RoomStayAdapter().typeId)) {
      Hive.registerAdapter(RoomStayAdapter());
    }
    if (!Hive.isAdapterRegistered(RoomAdapter().typeId)) {
      Hive.registerAdapter(RoomAdapter());
    }
    if (!Hive.isAdapterRegistered(RoomsAdapter().typeId)) {
      Hive.registerAdapter(RoomsAdapter());
    }

    _box = await Hive.openBox(HiveKeys.allHotelsData);
  }

  @override
  Future<void> saveData(
      {required String id, required HotelsResponseModel data}) async {
    await _box!.put(id, data);
    await _box!.flush();
  }
}
