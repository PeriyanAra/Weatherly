part of 'weather_view_bloc.dart';

@freezed
class WeatherViewEvent with _$WeatherViewEvent {
  const factory WeatherViewEvent.searchCity({
    required String cityName,
  }) = _SearchCityEvent;

  const factory WeatherViewEvent.getSavedCities() = _GetSavedCitiesEvent;

  const factory WeatherViewEvent.getCurrentLocationWeather() = _GetCurrentLocationWeatherEvent;

  const factory WeatherViewEvent.clearSearchedCities() = _ClearSearchedCitiesEvent;
}
