import 'package:hive/hive.dart';
import 'package:logger/logger.dart';

import 'i_local_storage_service.dart';

class LocalStorageService extends ILocalStorageService {
  @override
  Future<void> deleteBox({required String boxName}) async {
    try {
      await Hive.deleteBoxFromDisk(boxName);
      Logger().i('$boxName Hive Box deleted');
    } on Exception catch (e) {
      Logger().e(e);
    }
  }

  @override
  Future<void> deleteAll() async {
    await Hive.deleteFromDisk();
  }

  @override
  Future read(
      {required String boxName,
      required String key,
      dynamic defaultValue}) async {
    try {
      var box = await Hive.openBox(boxName);
      return box.get(key, defaultValue: defaultValue);
    } on Exception catch (e) {
      Logger().e(e);
      return defaultValue;
    }
  }

  @override
  Future<void> write(
      {required String boxName,
      required String key,
      value,
      bool isList = false}) async {
    var box = await Hive.openBox(boxName);
    if (isList) {
      await box.add(value);
    } else {
      await box.put(key, value);
    }
  }

  @override
  Future<void> deleteRecord({required String boxName, required int index}) async{
    var box = await Hive.openBox(boxName);
    await box.deleteAt(index);
  }
}
