import 'package:shared_preferences/shared_preferences.dart';
import 'package:weatherly/core/di/di.dart';
import 'package:weatherly/device/device_app_key_value_storage.dart';
import 'package:weatherly/domain/device/storage/app_key_value_storage.dart';

class DeviceDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    final appKeyValueStorage = DeviceAppKeyValueStorage(
      sharedPreferences: await SharedPreferences.getInstance(),
      jsonStringConverter: di(),
    );

    di.registerSingleton<AppKeyValueStorage>(appKeyValueStorage);
  }
}
