import 'package:flutter/material.dart';
import 'package:weatherly/presentation/theme/color/weatherly_color_theme_extension.dart';
import 'package:weatherly/presentation/theme/text/weatherly_text_theme_extension.dart';

class WeatherlyTextTheme {
  static WeatherlyTextThemeExtension basedColor({
    required WeatherlyColorThemeExtension colorTheme,
  }) {
    return WeatherlyTextThemeExtension(
      headline1: TextStyle(
        fontSize: 50.0,
        fontWeight: FontWeight.bold,
        letterSpacing: -1.5,
        color: colorTheme.foregroundPrimary,
      ),
      headline2: TextStyle(
        fontSize: 28.0,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.5,
        color: colorTheme.foregroundPrimary,
      ),
      headline3: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        letterSpacing: 0,
        color: colorTheme.foregroundPrimary,
      ),
      subtitle1: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        letterSpacing: 0.15,
        color: colorTheme.foregroundPrimary,
      ),
      subtitle2: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        color: colorTheme.foregroundPrimary,
      ),
      bodyText1: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.normal,
        letterSpacing: 0.5,
        color: colorTheme.foregroundPrimary,
      ),
      bodyText2: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        letterSpacing: 0.25,
        color: colorTheme.foregroundPrimary,
      ),
      caption: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        letterSpacing: 0.4,
        color: colorTheme.foregroundTertiary,
      ),
      button: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.25,
        color: colorTheme.foregroundPrimary,
      ),
      overline: TextStyle(
        fontSize: 10.0,
        fontWeight: FontWeight.normal,
        letterSpacing: 1.5,
        color: colorTheme.foregroundPrimary,
      ),
    );
  }
}
