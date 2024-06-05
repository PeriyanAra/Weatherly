import 'package:flutter/material.dart';

@immutable
class WeatherlyTextThemeExtension extends ThemeExtension<WeatherlyTextThemeExtension> {
  const WeatherlyTextThemeExtension({
    required this.headline1,
    required this.headline2,
    required this.headline3,
    required this.subtitle1,
    required this.subtitle2,
    required this.bodyText1,
    required this.bodyText2,
    required this.caption,
    required this.button,
    required this.overline,
  });

  final TextStyle headline1;
  final TextStyle headline2;
  final TextStyle headline3;

  final TextStyle subtitle1;
  final TextStyle subtitle2;

  final TextStyle bodyText1;
  final TextStyle bodyText2;

  final TextStyle caption;
  final TextStyle button;
  final TextStyle overline;

  @override
  int get hashCode => Object.hash(
        headline1,
        headline2,
        headline3,
        subtitle1,
        subtitle2,
        bodyText1,
        bodyText2,
        caption,
        button,
        overline,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeatherlyTextThemeExtension &&
          runtimeType == other.runtimeType &&
          headline1 == other.headline1 &&
          headline2 == other.headline2 &&
          headline3 == other.headline3 &&
          subtitle1 == other.subtitle1 &&
          subtitle2 == other.subtitle2 &&
          bodyText1 == other.bodyText1 &&
          bodyText2 == other.bodyText2 &&
          caption == other.caption &&
          button == other.button &&
          overline == other.overline;

  @override
  ThemeExtension<WeatherlyTextThemeExtension> copyWith({
    TextStyle? headline1,
    TextStyle? headline2,
    TextStyle? headline3,
    TextStyle? headline4,
    TextStyle? headline5,
    TextStyle? headline6,
    TextStyle? subtitle1,
    TextStyle? subtitle2,
    TextStyle? bodyText1,
    TextStyle? bodyText2,
    TextStyle? caption,
    TextStyle? button,
    TextStyle? overline,
  }) {
    return WeatherlyTextThemeExtension(
      headline1: headline1 ?? this.headline1,
      headline2: headline2 ?? this.headline2,
      headline3: headline3 ?? this.headline3,
      subtitle1: subtitle1 ?? this.subtitle1,
      subtitle2: subtitle2 ?? this.subtitle2,
      bodyText1: bodyText1 ?? this.bodyText1,
      bodyText2: bodyText2 ?? this.bodyText2,
      caption: caption ?? this.caption,
      button: button ?? this.button,
      overline: overline ?? this.overline,
    );
  }

  @override
  ThemeExtension<WeatherlyTextThemeExtension> lerp(
    covariant ThemeExtension<WeatherlyTextThemeExtension>? other,
    double t,
  ) {
    if (other is! WeatherlyTextThemeExtension) return this;

    const defaultTextStyle = TextStyle();

    return WeatherlyTextThemeExtension(
      headline1: TextStyle.lerp(headline1, other.headline1, t) ?? defaultTextStyle,
      headline2: TextStyle.lerp(headline2, other.headline2, t) ?? defaultTextStyle,
      headline3: TextStyle.lerp(headline3, other.headline3, t) ?? defaultTextStyle,
      subtitle1: TextStyle.lerp(subtitle1, other.subtitle1, t) ?? defaultTextStyle,
      subtitle2: TextStyle.lerp(subtitle2, other.subtitle2, t) ?? defaultTextStyle,
      bodyText1: TextStyle.lerp(bodyText1, other.bodyText1, t) ?? defaultTextStyle,
      bodyText2: TextStyle.lerp(bodyText2, other.bodyText2, t) ?? defaultTextStyle,
      caption: TextStyle.lerp(caption, other.caption, t) ?? defaultTextStyle,
      button: TextStyle.lerp(button, other.button, t) ?? defaultTextStyle,
      overline: TextStyle.lerp(overline, other.overline, t) ?? defaultTextStyle,
    );
  }

  static WeatherlyTextThemeExtension of(BuildContext context) {
    return Theme.of(context).extension<WeatherlyTextThemeExtension>()!;
  }
}
