import 'package:flutter/material.dart';
import 'package:weatherly/presentation/theme/color/color.dart';

class WeatherlySystemToast {
  static void showToast({
    required BuildContext context,
    required String text,
    required WeatherlySystemToastStyle style,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(6.0),
          ),
        ),
        backgroundColor: style.backgroundColor,
        content: InkWell(
          onTap: () {
            if (context.mounted) {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
            }
          },
          child: Row(
            children: [
              Icon(
                style.icon,
                color: style.iconColor,
                size: 24.0,
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(
                    color: style.fontColor,
                  ),
                ),
              ),
              const SizedBox(width: 10.0),
              Icon(
                Icons.close_rounded,
                size: 24.0,
                color: style.fontColor,
              ),
              const SizedBox(width: 10.0),
            ],
          ),
        ),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}

class WeatherlySystemToastStyle {
  final IconData icon;
  final Color iconColor;
  final Color fontColor;
  final Color backgroundColor;

  const WeatherlySystemToastStyle({
    required this.icon,
    required this.backgroundColor,
    required this.iconColor,
    required this.fontColor,
  });

  factory WeatherlySystemToastStyle.error(BuildContext context) {
    final colorTheme = WeatherlyColorThemeExtension.of(context);

    return WeatherlySystemToastStyle(
      icon: Icons.error_outline_outlined,
      backgroundColor: colorTheme.error,
      iconColor: colorTheme.secondary,
      fontColor: colorTheme.secondary,
    );
  }

  factory WeatherlySystemToastStyle.info(BuildContext context) {
    final colorTheme = WeatherlyColorThemeExtension.of(context);

    return WeatherlySystemToastStyle(
      icon: Icons.info_outline,
      backgroundColor: colorTheme.primary,
      iconColor: colorTheme.secondary,
      fontColor: colorTheme.secondary,
    );
  }

  WeatherlySystemToastStyle copyWith({
    IconData? icon,
    Color? backgroundColor,
    Color? iconColor,
    Color? fontColor,
  }) {
    return WeatherlySystemToastStyle(
      icon: icon ?? this.icon,
      iconColor: iconColor ?? this.iconColor,
      fontColor: fontColor ?? this.fontColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }
}
