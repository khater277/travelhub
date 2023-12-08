abstract class LocalStorage<Type> {
  Future<void> init();
  bool hasData();
  Future<void> saveData({required String id, required Type data});
  Type? getData({required String id});
  List<Type> getAllData();
  Future<void> delete({required String id});
}
