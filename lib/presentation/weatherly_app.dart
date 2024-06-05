import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherly/app/app.dart';
import 'package:weatherly/presentation/theme/weatherly_theme.dart';
import 'package:weatherly/presentation/weather_view/weather_view.dart';

class WeatherlyApp extends StatefulWidget {
  const WeatherlyApp({super.key});

  @override
  State<WeatherlyApp> createState() => _WeatherlyAppState();
}

class _WeatherlyAppState extends State<WeatherlyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weatherly',
      debugShowCheckedModeBanner: false,
      theme: WeatherlyTheme.light(),
      darkTheme: WeatherlyTheme.dark(),
      themeMode: context.watch<AppThemeMode>().themeMode,
      home: const WeatherView(),
    );
  }
}
