import 'package:flutter/material.dart';
import 'package:weatherly/presentation/settings/settings_screen.dart';
import 'package:weatherly/presentation/theme/theme.dart';
import 'package:weatherly/presentation/weather_view/widgets/page_indicator.dart';

class WeatherlyBottomBar extends StatelessWidget {
  const WeatherlyBottomBar({
    required this.controller,
    required this.itemCount,
    super.key,
  });

  final PageController controller;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    final bottomBarTheme = BottomBarThemeExtension.of(context);

    return Container(
      height: bottomBarTheme.height,
      decoration: BoxDecoration(
        color: bottomBarTheme.backgroundColor,
        border: Border(
          top: BorderSide(color: bottomBarTheme.borderColor),
        ),
      ),
      child: Padding(
        padding: bottomBarTheme.contentPadding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const IconButton(
              onPressed: null,
              icon: SizedBox.shrink(),
            ),
            PageIndicator(
              controller: controller,
              itemCount: itemCount,
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SettingsScreen(),
                ));
              },
              icon: Icon(
                Icons.settings,
                color: bottomBarTheme.iconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
