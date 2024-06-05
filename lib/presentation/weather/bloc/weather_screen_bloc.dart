import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherly/domain/city/city_repository.dart';
import 'package:weatherly/domain/weather/weather_repository.dart';
import 'package:weatherly/presentation/weather_view/view_models/coordinate_view_model.dart';
import 'package:weatherly/presentation/weather_view/view_models/weather_details_view_model.dart';

part 'weather_screen_event.dart';
part 'weather_screen_state.dart';
part 'weather_screen_bloc.freezed.dart';

class WeatherScreenBloc extends Bloc<WeatherScreenEvent, WeatherScreenState> {
  final WeatherRepository _weatherRepository;
  final CityRepository _cityRepository;

  WeatherScreenBloc({
    required WeatherRepository weatherRepository,
    required CityRepository cityRepository,
  })  : _weatherRepository = weatherRepository,
        _cityRepository = cityRepository,
        super(const WeatherScreenState.loading()) {
    on<_WeatherScreenGetDataEvent>(_handleWeatherScreenGetDataEvent);
    on<_WeatherScreenSaveLocationEvent>(_handleWeatherScreenSaveLocationEvent);
  }

  Future<void> _handleWeatherScreenGetDataEvent(
    _WeatherScreenGetDataEvent event,
    Emitter<WeatherScreenState> emit,
  ) async {
    emit(const WeatherScreenState.loading());

    final response = await _weatherRepository.getWeather(
      coordinate: event.coordinate.toEntity(),
    );

    if (response.isSuccess) {
      final weather = WeatherDetailsViewModel.fromEntity(response.success);

      emit(WeatherScreenState.loaded(viewModel: weather));
    } else {
      emit(WeatherScreenState.error(errorMessage: response.failure.errorMessage));
    }
  }

  Future<void> _handleWeatherScreenSaveLocationEvent(
    _WeatherScreenSaveLocationEvent event,
    Emitter<WeatherScreenState> emit,
  ) async {
    if (state is! WeatherScreenLoadedState) return;

    final currentState = state as WeatherScreenLoadedState;

    try {
      await _cityRepository.saveCity(
        cityName: event.name,
        cityCoordinate: event.coordinate.toEntity(),
      );

      event.onSuccess.call();
    } catch (e) {
      emit(currentState.copyWith(errorMessage: e.toString()));
      emit(currentState.copyWith(errorMessage: null));
    }
  }
}
