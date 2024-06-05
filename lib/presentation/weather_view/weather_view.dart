import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherly/core/core.dart';
import 'package:weatherly/presentation/weather_view/bloc/weather_view_bloc.dart';
import 'package:weatherly/presentation/weather_view/weather_view_content.dart';

class WeatherView extends StatelessWidget {
  const WeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: inject<WeatherViewBloc>()
        ..add(
          const WeatherViewEvent.getCurrentLocationWeather(),
        ),
      child: const WeatherViewContent(),
    );
  }
}
