import 'package:weatherly/core/core.dart';

class CoreDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    di
      ..registerLazySingleton<CustomJsonDecoder>(() => CustomJsonDecoder([]))
      ..registerLazySingleton<JsonStringConverter>(() => JsonStringConverter(jsonDecoder: di()));
  }
}
