import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherly/domain/weather/weather.dart';

part 'weather_details_view_model.freezed.dart';

@freezed
class WeatherDetailsViewModel with _$WeatherDetailsViewModel {
  const factory WeatherDetailsViewModel({
    required String city,
    required String icon,
    required String currentTemp,
    required String highestTemp,
    required String lowestTemp,
    @Default(false) bool isCurrentLocation,
  }) = _WeatherDetailsViewModel;

  const WeatherDetailsViewModel._();

  factory WeatherDetailsViewModel.fromEntity(WeatherData entity) {
    return WeatherDetailsViewModel(
      city: entity.locationName,
      icon: entity.skyWeather.isNotEmpty ? entity.skyWeather.last.icon : '',
      currentTemp: entity.airTemperature.temperature.toString(),
      highestTemp: entity.airTemperature.maxTemperature.toString(),
      lowestTemp: entity.airTemperature.minTemperature.toString(),
    );
  }
}
