import 'package:flutter/material.dart';
import 'package:weatherly/presentation/theme/color/weatherly_color.dart';

const _halfT = 0.5;

@immutable
class WeatherlyColorThemeExtension extends ThemeExtension<WeatherlyColorThemeExtension> {
  const WeatherlyColorThemeExtension({
    required this.brightness,
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.foregroundPrimary,
    required this.foregroundSecondary,
    required this.foregroundTertiary,
    required this.backgroundPrimary,
    required this.backgroundSecondary,
    required this.error,
  });

  final Brightness brightness;

  final WeatherlyColor primary;
  final WeatherlyColor secondary;
  final WeatherlyColor tertiary;

  final WeatherlyColor foregroundPrimary;
  final WeatherlyColor foregroundSecondary;
  final WeatherlyColor foregroundTertiary;

  final WeatherlyColor backgroundPrimary;
  final WeatherlyColor backgroundSecondary;

  final WeatherlyColor error;

  @override
  int get hashCode => Object.hash(
        primary,
        secondary,
        tertiary,
        foregroundPrimary,
        foregroundSecondary,
        foregroundTertiary,
        backgroundPrimary,
        backgroundSecondary,
        error,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeatherlyColorThemeExtension &&
          runtimeType == other.runtimeType &&
          primary == other.primary &&
          secondary == other.secondary &&
          tertiary == other.tertiary &&
          foregroundPrimary == other.foregroundPrimary &&
          foregroundSecondary == other.foregroundSecondary &&
          foregroundTertiary == other.foregroundTertiary &&
          backgroundPrimary == other.backgroundPrimary &&
          backgroundSecondary == other.backgroundSecondary &&
          error == other.error;

  @override
  WeatherlyColorThemeExtension copyWith({
    WeatherlyColor? primary,
    WeatherlyColor? secondary,
  }) {
    return WeatherlyColorThemeExtension(
      brightness: brightness,
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      tertiary: tertiary,
      foregroundPrimary: foregroundPrimary,
      foregroundSecondary: foregroundSecondary,
      foregroundTertiary: foregroundTertiary,
      backgroundPrimary: backgroundPrimary,
      backgroundSecondary: backgroundSecondary,
      error: error,
    );
  }

  @override
  ThemeExtension<WeatherlyColorThemeExtension> lerp(
    covariant ThemeExtension<WeatherlyColorThemeExtension>? other,
    double t,
  ) {
    if (other is! WeatherlyColorThemeExtension) {
      return this;
    }

    return WeatherlyColorThemeExtension(
      brightness: t < _halfT ? brightness : other.brightness,
      primary: primary.lerp(other.primary, t),
      secondary: secondary.lerp(other.secondary, t),
      tertiary: tertiary.lerp(other.tertiary, t),
      foregroundPrimary: foregroundPrimary.lerp(other.foregroundPrimary, t),
      foregroundSecondary: foregroundSecondary.lerp(other.foregroundSecondary, t),
      foregroundTertiary: foregroundTertiary.lerp(other.foregroundTertiary, t),
      backgroundPrimary: backgroundPrimary.lerp(other.backgroundPrimary, t),
      backgroundSecondary: backgroundSecondary.lerp(other.backgroundSecondary, t),
      error: error.lerp(other.error, t),
    );
  }

  static WeatherlyColorThemeExtension of(BuildContext context) {
    return Theme.of(context).extension<WeatherlyColorThemeExtension>()!;
  }
}
