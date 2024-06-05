import 'package:flutter/material.dart';
import 'package:weatherly/presentation/theme/color/weatherly_color.dart';
import 'package:weatherly/presentation/theme/color/weatherly_color_theme_extension.dart';
import 'package:weatherly/presentation/theme/color/weatherly_colors_palette.dart';

class WeatherlyColorTheme {
  static WeatherlyColorThemeExtension light() {
    return WeatherlyColorThemeExtension(
      brightness: Brightness.light,
      primary: WeatherlyColor(WeatherlyColorsPalette.skyBlueLight.value),
      secondary: WeatherlyColor(WeatherlyColorsPalette.white.value),
      tertiary: WeatherlyColor(WeatherlyColorsPalette.lightGray.value),
      foregroundPrimary: WeatherlyColor(WeatherlyColorsPalette.black.value),
      foregroundSecondary: WeatherlyColor(WeatherlyColorsPalette.gray60.value),
      foregroundTertiary: WeatherlyColor(WeatherlyColorsPalette.grayDark.value),
      backgroundPrimary: WeatherlyColor(WeatherlyColorsPalette.white.value),
      backgroundSecondary: WeatherlyColor(WeatherlyColorsPalette.gray10.value),
      error: WeatherlyColor(WeatherlyColorsPalette.red.value),
    );
  }

  static WeatherlyColorThemeExtension dark() {
    return WeatherlyColorThemeExtension(
      brightness: Brightness.dark,
      primary: WeatherlyColor(WeatherlyColorsPalette.skyBlueLight.value),
      secondary: WeatherlyColor(WeatherlyColorsPalette.black.value),
      tertiary: WeatherlyColor(WeatherlyColorsPalette.lightGray.value),
      foregroundPrimary: WeatherlyColor(WeatherlyColorsPalette.white.value),
      foregroundSecondary: WeatherlyColor(WeatherlyColorsPalette.gray10.value),
      foregroundTertiary: WeatherlyColor(WeatherlyColorsPalette.lightGray.value),
      backgroundPrimary: WeatherlyColor(WeatherlyColorsPalette.black.value),
      backgroundSecondary: WeatherlyColor(WeatherlyColorsPalette.black.value),
      error: WeatherlyColor(WeatherlyColorsPalette.red.value),
    );
  }
}
