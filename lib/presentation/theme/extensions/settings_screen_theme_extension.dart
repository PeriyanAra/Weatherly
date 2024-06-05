import 'package:flutter/material.dart';
import 'package:weatherly/presentation/theme/color/weatherly_color_theme_extension.dart';

@immutable
class SettingsScreenThemeExtension extends ThemeExtension<SettingsScreenThemeExtension> {
  const SettingsScreenThemeExtension({
    required WeatherlyColorThemeExtension colorTheme,
  }) : _colorTheme = colorTheme;

  final WeatherlyColorThemeExtension _colorTheme;

  EdgeInsets get contentPadding => const EdgeInsets.all(16.0);

  double get smallHeightBox => 10.0;
  double get mediumHeightBox => 20.0;
  double get largeHeightBox => 50.0;

  @override
  SettingsScreenThemeExtension copyWith({
    WeatherlyColorThemeExtension? colorTheme,
  }) {
    return SettingsScreenThemeExtension(
      colorTheme: colorTheme ?? _colorTheme,
    );
  }

  @override
  ThemeExtension<SettingsScreenThemeExtension> lerp(
    covariant ThemeExtension<SettingsScreenThemeExtension>? other,
    double t,
  ) {
    if (other is! SettingsScreenThemeExtension) return this;

    return SettingsScreenThemeExtension(colorTheme: _colorTheme);
  }

  static SettingsScreenThemeExtension of(BuildContext context) {
    return Theme.of(context).extension<SettingsScreenThemeExtension>()!;
  }
}
