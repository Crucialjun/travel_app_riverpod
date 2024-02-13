abstract class ILocalStorageService {
  Future<dynamic> read(
      {required String boxName, required String key, dynamic defaultValue});
  Future<void> write(
      {required String boxName, required String key, required dynamic value, bool isList = false});
  Future<void> deleteAll();
  Future<void> deleteRecord({required String boxName,required int index});
  Future<void> deleteBox({required String boxName});
}
