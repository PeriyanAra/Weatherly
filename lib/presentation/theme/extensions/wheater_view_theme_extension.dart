import 'package:flutter/material.dart';
import 'package:weatherly/presentation/theme/color/weatherly_color_theme_extension.dart';

@immutable
class WeatherViewThemeExtension extends ThemeExtension<WeatherViewThemeExtension> {
  const WeatherViewThemeExtension({
    required WeatherlyColorThemeExtension colorTheme,
  }) : _colorTheme = colorTheme;

  final WeatherlyColorThemeExtension _colorTheme;

  double get smallHeightBox => 10.0;
  double get mediumHeightBox => 20.0;
  double get largeHeightBox => 50.0;

  @override
  WeatherViewThemeExtension copyWith({
    WeatherlyColorThemeExtension? colorTheme,
  }) {
    return WeatherViewThemeExtension(
      colorTheme: colorTheme ?? _colorTheme,
    );
  }

  @override
  ThemeExtension<WeatherViewThemeExtension> lerp(
    covariant ThemeExtension<WeatherViewThemeExtension>? other,
    double t,
  ) {
    if (other is! WeatherViewThemeExtension) return this;

    return WeatherViewThemeExtension(colorTheme: _colorTheme);
  }

  static WeatherViewThemeExtension of(BuildContext context) {
    return Theme.of(context).extension<WeatherViewThemeExtension>()!;
  }
}
