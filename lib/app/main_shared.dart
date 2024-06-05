import 'dart:async';
import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:weatherly/app/app.dart';
import 'package:weatherly/core/di/get_it_implementation.dart';
import 'package:weatherly/core/di/register_app_dependencies.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> mainShared(
  Widget appProvider,
) async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await SystemChrome.setPreferredOrientations(
        [
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ],
      );

      FlutterError.onError = (FlutterErrorDetails errorDetails) {
        Zone.current.handleUncaughtError(
          errorDetails.exception,
          errorDetails.stack ?? StackTrace.empty,
        );
      };

      await dotenv.load(fileName: ".env");

      final di = DiGetItImplementation();
      await registerAppDependencies(di);

      runApp(
        ChangeNotifierProvider.value(
          value: AppThemeMode(di<AppThemeModeSettings>().themeMode),
          child: appProvider,
        ),
      );
    },
    (error, StackTrace stackTrace) {
      dev.log(
        'An unhandled error!',
        error: error,
        stackTrace: stackTrace,
      );
    },
  );
}
