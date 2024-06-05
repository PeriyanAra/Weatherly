import 'package:weatherly/app/app_shared_dependencies.dart';
import 'package:weatherly/core/core_dependencies.dart';
import 'package:weatherly/core/di/dependencies.dart';
import 'package:weatherly/core/di/dependency_injection.dart';
import 'package:weatherly/data/data_dependencies.dart';
import 'package:weatherly/device/device_dependencies.dart';
import 'package:weatherly/domain/domain_dependencies.dart';
import 'package:weatherly/presentation/presentation_dependencies.dart';

Future<void> registerAppDependencies(
  DI di,
) async {
  final dependenciesList = <Dependencies>[
    CoreDependencies(),
    DeviceDependencies(),
    AppSharedDependencies(),
    DataDependencies(),
    DomainDependencies(),
    PresentationDependencies(),
  ];

  for (final dependencies in dependenciesList) {
    await dependencies.register(di);
  }
}
