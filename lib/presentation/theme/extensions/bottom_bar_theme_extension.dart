import 'package:flutter/material.dart';
import 'package:weatherly/presentation/theme/color/weatherly_color_theme_extension.dart';

@immutable
class BottomBarThemeExtension extends ThemeExtension<BottomBarThemeExtension> {
  const BottomBarThemeExtension({
    required WeatherlyColorThemeExtension colorTheme,
  }) : _colorTheme = colorTheme;

  final WeatherlyColorThemeExtension _colorTheme;

  EdgeInsets get contentPadding => const EdgeInsets.symmetric(horizontal: 8.0);
  EdgeInsets get indicatorPadding => const EdgeInsets.symmetric(horizontal: 4.0);
  EdgeInsets get locationIconPadding => const EdgeInsets.symmetric(horizontal: 16.0);

  double get height => 55.0;
  double get indicatorSize => 8.0;

  Color get backgroundColor => _colorTheme.primary;
  Color get borderColor => _colorTheme.secondary;
  Color get iconColor => _colorTheme.secondary;
  Color get activeIndicatorColor => _colorTheme.secondary;
  Color get inActiveIndicatorColor => _colorTheme.tertiary;

  @override
  BottomBarThemeExtension copyWith({
    WeatherlyColorThemeExtension? colorTheme,
  }) {
    return BottomBarThemeExtension(
      colorTheme: colorTheme ?? _colorTheme,
    );
  }

  @override
  ThemeExtension<BottomBarThemeExtension> lerp(
    covariant ThemeExtension<BottomBarThemeExtension>? other,
    double t,
  ) {
    if (other is! BottomBarThemeExtension) return this;

    return BottomBarThemeExtension(colorTheme: _colorTheme);
  }

  static BottomBarThemeExtension of(BuildContext context) {
    return Theme.of(context).extension<BottomBarThemeExtension>()!;
  }
}
