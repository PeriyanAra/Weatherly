import 'package:flutter/material.dart';
import 'package:weatherly/presentation/theme/color/weatherly_color_theme_extension.dart';

class WeatherlyLoader extends StatelessWidget {
  const WeatherlyLoader({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = WeatherlyColorThemeExtension.of(context);

    return Material(
      color: colorTheme.backgroundPrimary,
      child: Center(
        child: CircularProgressIndicator(
          color: colorTheme.primary,
        ),
      ),
    );
  }
}
