import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherly/app/theme_mode/theme_mode.dart';
import 'package:weatherly/presentation/theme/theme.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = WeatherlyColorThemeExtension.of(context);
    final textTheme = WeatherlyTextThemeExtension.of(context);
    final settingsScreenTheme = SettingsScreenThemeExtension.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: textTheme.headline3.copyWith(color: colorTheme.secondary),
        ),
        backgroundColor: colorTheme.primary,
        leading: IconButton(
          onPressed: Navigator.of(context).pop,
          icon: Icon(
            Icons.arrow_back,
            color: colorTheme.secondary,
          ),
        ),
      ),
      body: Padding(
        padding: settingsScreenTheme.contentPadding,
        child: Column(
          children: [
            Text(
              'Change app theme',
              style: textTheme.headline2,
            ),
            SizedBox(
              height: settingsScreenTheme.mediumHeightBox,
            ),
            ListTile(
              title: Text(
                'Light',
                style: textTheme.bodyText1,
              ),
              leading: Radio<ThemeMode>(
                value: ThemeMode.light,
                groupValue: context.watch<AppThemeMode>().themeMode,
                onChanged: (ThemeMode? themeMode) {
                  if (themeMode != null) {
                    context.read<AppThemeMode>().updateThemeMode(themeMode);
                  }
                },
              ),
            ),
            ListTile(
              title: Text(
                'Dark',
                style: textTheme.bodyText1,
              ),
              leading: Radio<ThemeMode>(
                value: ThemeMode.dark,
                groupValue: context.watch<AppThemeMode>().themeMode,
                onChanged: (ThemeMode? themeMode) {
                  if (themeMode != null) {
                    context.read<AppThemeMode>().updateThemeMode(themeMode);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
