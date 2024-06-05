import 'package:flutter/material.dart';
import 'package:weatherly/presentation/theme/color/weatherly_color_theme_extension.dart';

@immutable
class SearchBarThemeExtension extends ThemeExtension<SearchBarThemeExtension> {
  const SearchBarThemeExtension({
    required WeatherlyColorThemeExtension colorTheme,
  }) : _colorTheme = colorTheme;

  final WeatherlyColorThemeExtension _colorTheme;

  EdgeInsets get contentPadding => const EdgeInsets.all(16.0);
  EdgeInsets get searchBarContentPadding =>
      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0);
  EdgeInsets get searchContentPadding => const EdgeInsets.symmetric(horizontal: 16.0);

  Color get searchBarColor => _colorTheme.primary;
  Color get borderColor => _colorTheme.secondary;
  Color get iconColor => _colorTheme.secondary;
  Color get textColor => _colorTheme.secondary;
  Color get cursorColor => _colorTheme.secondary;

  Radius get circularRadius => const Radius.circular(30);
  Radius get zeroRadius => Radius.zero;

  Duration get animationDuration => const Duration(milliseconds: 400);
  Duration get animationMinDuration => const Duration(milliseconds: 200);

  double get width => 50.0;
  double get height => 250.0;

  @override
  SearchBarThemeExtension copyWith({
    WeatherlyColorThemeExtension? colorTheme,
  }) {
    return SearchBarThemeExtension(
      colorTheme: colorTheme ?? _colorTheme,
    );
  }

  @override
  ThemeExtension<SearchBarThemeExtension> lerp(
    covariant ThemeExtension<SearchBarThemeExtension>? other,
    double t,
  ) {
    if (other is! SearchBarThemeExtension) return this;

    return SearchBarThemeExtension(colorTheme: _colorTheme);
  }

  static SearchBarThemeExtension of(BuildContext context) {
    return Theme.of(context).extension<SearchBarThemeExtension>()!;
  }
}
