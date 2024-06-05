import 'package:flutter/material.dart';
import 'package:weatherly/presentation/theme/theme.dart';

class WeatherlyErrorContent extends StatelessWidget {
  const WeatherlyErrorContent({
    required this.errorText,
    super.key,
  });

  final String errorText;

  @override
  Widget build(BuildContext context) {
    final colorTheme = WeatherlyColorThemeExtension.of(context);
    final textTheme = WeatherlyTextThemeExtension.of(context);

    return Material(
      color: colorTheme.backgroundPrimary,
      child: Center(
        child: Text(
          errorText,
          style: textTheme.headline3,
        ),
      ),
    );
  }
}
