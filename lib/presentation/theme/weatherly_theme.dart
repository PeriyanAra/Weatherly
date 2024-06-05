import 'package:flutter/material.dart';
import 'package:weatherly/presentation/theme/theme.dart';

class WeatherlyTheme {
  static ThemeData light() {
    final colorTheme = WeatherlyColorTheme.light();
    final textTheme = WeatherlyTextTheme.basedColor(colorTheme: colorTheme);
    final weatherViewTheme = WeatherViewThemeExtension(colorTheme: colorTheme);
    final bottomBarTheme = BottomBarThemeExtension(colorTheme: colorTheme);
    final searchBarTheme = SearchBarThemeExtension(colorTheme: colorTheme);
    final settingsScreenTheme = SettingsScreenThemeExtension(colorTheme: colorTheme);

    return ThemeData(
      useMaterial3: true,
      applyElevationOverlayColor: false,
      colorScheme: ColorScheme.fromSeed(seedColor: colorTheme.primary),
      splashFactory: NoSplash.splashFactory,
      highlightColor: Colors.transparent,
      scaffoldBackgroundColor: colorTheme.backgroundPrimary,
      extensions: <ThemeExtension<dynamic>>[
        colorTheme,
        textTheme,
        weatherViewTheme,
        bottomBarTheme,
        searchBarTheme,
        settingsScreenTheme
      ],
    );
  }

  static ThemeData dark() {
    final colorTheme = WeatherlyColorTheme.dark();
    final textTheme = WeatherlyTextTheme.basedColor(colorTheme: colorTheme);
    final weatherViewTheme = WeatherViewThemeExtension(colorTheme: colorTheme);
    final bottomBarTheme = BottomBarThemeExtension(colorTheme: colorTheme);
    final searchBarTheme = SearchBarThemeExtension(colorTheme: colorTheme);
    final settingsScreenTheme = SettingsScreenThemeExtension(colorTheme: colorTheme);

    return ThemeData(
      useMaterial3: true,
      applyElevationOverlayColor: false,
      colorScheme: ColorScheme.fromSeed(seedColor: colorTheme.primary),
      splashFactory: NoSplash.splashFactory,
      highlightColor: Colors.transparent,
      scaffoldBackgroundColor: colorTheme.backgroundPrimary,
      extensions: <ThemeExtension<dynamic>>[
        colorTheme,
        textTheme,
        weatherViewTheme,
        bottomBarTheme,
        searchBarTheme,
        settingsScreenTheme,
      ],
    );
  }
}
