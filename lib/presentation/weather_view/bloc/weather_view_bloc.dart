import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherly/domain/city/city_repository.dart';
import 'package:weatherly/domain/weather/weather.dart';
import 'package:weatherly/domain/weather/weather_repository.dart';
import 'package:weatherly/presentation/weather_view/view_models/city_view_model.dart';
import 'package:weatherly/presentation/weather_view/view_models/weather_details_view_model.dart';

part 'weather_view_bloc.freezed.dart';
part 'weather_view_event.dart';
part 'weather_view_state.dart';

class WeatherViewBloc extends Bloc<WeatherViewEvent, WeatherViewState> {
  WeatherViewBloc({
    required CityRepository cityRepository,
    required WeatherRepository weatherRepository,
  })  : _cityRepository = cityRepository,
        _weatherRepository = weatherRepository,
        super(
          const WeatherViewState.loading(),
        ) {
    on<_GetCurrentLocationWeatherEvent>(_handleGetCurrentLocationWeatherEvent);
    on<_GetSavedCitiesEvent>(_handleGetSavedCitiesEvent);
    on<_SearchCityEvent>(_handleSearchCityEvent);
    on<_ClearSearchedCitiesEvent>(_handleClearSearchedCities);
  }

  final CityRepository _cityRepository;
  final WeatherRepository _weatherRepository;

  final _searchedPlacesStreamController = StreamController<List<CityViewModel>>.broadcast();
  var _hasCurrentLocation = false;

  Stream get searchedPlacesStream => _searchedPlacesStreamController.stream;
  bool get hasCurrentLocation => _hasCurrentLocation;

  Future<void> _handleGetCurrentLocationWeatherEvent(
    _GetCurrentLocationWeatherEvent event,
    Emitter<WeatherViewState> emit,
  ) async {
    WeatherViewLoadedState? currentState;

    var weatherLocations = <WeatherDetailsViewModel>[];

    if (state is WeatherViewLoadedState) {
      currentState = state as WeatherViewLoadedState;
    }

    final response = await _weatherRepository.getCurrentLocationWeather();

    if (response.isSuccess) {
      final weather = WeatherDetailsViewModel.fromEntity(response.success);

      if (currentState != null) {
        weatherLocations = [
          weather.copyWith(isCurrentLocation: true),
          ...currentState.weatherLocations,
        ];

        _hasCurrentLocation = true;
      } else {
        weatherLocations = [weather.copyWith(isCurrentLocation: true)];
      }

      emit(WeatherViewLoadedState(weatherLocations: weatherLocations));
    }
    add(const WeatherViewEvent.getSavedCities());
  }

  Future<void> _handleSearchCityEvent(
    _SearchCityEvent event,
    Emitter<WeatherViewState> emit,
  ) async {
    final response = await _cityRepository.searchCity(cityName: event.cityName);

    if (response.isSuccess) {
      _searchedPlacesStreamController.sink.add(
        response.success
            .map(
              (city) => CityViewModel.fromEntity(city),
            )
            .toList(),
      );
    } else {
      _searchedPlacesStreamController.sink.add(<CityViewModel>[]);
    }
  }

  Future<void> _handleGetSavedCitiesEvent(
    _GetSavedCitiesEvent event,
    Emitter<WeatherViewState> emit,
  ) async {
    WeatherViewLoadedState? currentState;

    if (state is WeatherViewLoadedState) {
      currentState = state as WeatherViewLoadedState;
    }

    var currentCites = <WeatherDetailsViewModel>[];

    final getSavedCitesResponse = await _cityRepository.getSavedCites();

    if (getSavedCitesResponse.isSuccess) {
      final savedCities = getSavedCitesResponse.success;
      for (var city in savedCities) {
        final weatherResponse = await _weatherRepository.getWeather(coordinate: city.coordinate);

        if (weatherResponse.isSuccess) {
          currentCites.add(WeatherDetailsViewModel.fromEntity(weatherResponse.success));
        } else {
          if (currentState != null) {
            emit(currentState.copyWith(errorMessage: weatherResponse.failure.errorMessage));
            emit(currentState.copyWith(errorMessage: null));
          }
        }
      }

      if (currentState != null) {
        final currentLocation = currentState.weatherLocations.where((element) {
          _hasCurrentLocation = element.isCurrentLocation;

          return element.isCurrentLocation;
        });
        late List<WeatherDetailsViewModel> weatherLocations;
        if (currentLocation.isNotEmpty) {
          weatherLocations = [currentLocation.first, ...currentCites];
        } else {
          weatherLocations = [...currentCites];
        }

        emit(WeatherViewState.loaded(weatherLocations: weatherLocations));
      } else {
        emit(WeatherViewState.loaded(weatherLocations: currentCites));
      }
    } else {
      emit(WeatherViewState.error(errorMessage: getSavedCitesResponse.failure.errorMessage));
    }
  }

  FutureOr<void> _handleClearSearchedCities(
    _ClearSearchedCitiesEvent event,
    Emitter<WeatherViewState> emit,
  ) {
    _searchedPlacesStreamController.sink.add(
      <CityViewModel>[],
    );
  }
}
