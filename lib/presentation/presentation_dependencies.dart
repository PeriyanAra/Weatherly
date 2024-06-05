import 'package:weatherly/core/core.dart';
import 'package:weatherly/presentation/weather/bloc/weather_screen_bloc.dart';
import 'package:weatherly/presentation/weather_view/bloc/weather_view_bloc.dart';

class PresentationDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    di
      ..registerLazySingleton<WeatherViewBloc>(
        () => WeatherViewBloc(
          cityRepository: di(),
          weatherRepository: di(),
        ),
      )
      ..registerLazySingleton<WeatherScreenBloc>(
        () => WeatherScreenBloc(
          weatherRepository: di(),
          cityRepository: di(),
        ),
      );
  }
}
