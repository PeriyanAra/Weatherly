import 'package:weatherly/app/theme_mode/app_theme_mode_settings.dart';
import 'package:weatherly/core/di/di.dart';

class AppSharedDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    di.registerSingleton<AppThemeModeSettings>(
      await AppThemeModeSettings.createInstance(appKeyValueStorage: di()),
    );
  }
}
