import 'package:travelhub/core/local_storage/keys.dart';
import 'package:travelhub/core/local_storage/local_storage.dart';
import 'package:travelhub/features/auth/data/models/current_user/current_user.dart';
import 'package:hive_flutter/hive_flutter.dart';

class UserStorage implements LocalStorage<CurrentUser> {
  static Box<CurrentUser>? _box;

  @override
  Future<void> delete({required String id}) => _box!.delete(id);

  @override
  List<CurrentUser> getAllData() => _box!.values.toList();

  @override
  CurrentUser? getData({required String id}) => _box!.get(id);

  @override
  bool hasData() => _box!.isNotEmpty;

  @override
  Future<void> init() async {
    if (!Hive.isAdapterRegistered(CurrentUserAdapter().typeId)) {
      Hive.registerAdapter(CurrentUserAdapter());
    }
    _box = await Hive.openBox(HiveKeys.currentUser);
  }

  @override
  Future<void> saveData({required String id, required CurrentUser data}) async {
    await _box!.put(id, data);
    await _box!.flush();
  }
}
// class UserStorage {
//   static Box<CurrentUser>? currentUser;
//   static Future<void> init() async {
//     if (!Hive.isAdapterRegistered(CurrentUserAdapter().typeId)) {
//       Hive.registerAdapter(CurrentUserAdapter());
//     }
//     currentUser = await Hive.openBox(HiveKeys.currentUser);
//   }

//   static bool get hasData => currentUser!.isNotEmpty;

//   static Future<void> saveData({required CurrentUser user}) async {
//     if (currentUser!.isNotEmpty) {
//       await currentUser!.clear();
//     }
    // await currentUser!.put(HiveKeys.currentUser, user);
    // await currentUser!.flush();
//   }

//   static CurrentUser? getData() {
//     return currentUser!.get(HiveKeys.currentUser);
//   }
// }
