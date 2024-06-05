import 'package:weatherly/core/di/dependency_injection.dart';

abstract class Dependencies {
  Future<void> register(DI di);
}
