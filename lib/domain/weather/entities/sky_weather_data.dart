import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherly/data/weather/weather.dart';

part 'sky_weather_data.freezed.dart';

@freezed
class SkyWeatherData with _$SkyWeatherData {
  const factory SkyWeatherData({
    required int id,
    required String main,
    required String description,
    required String icon,
  }) = _SkyWeatherData;

  const SkyWeatherData._();

  factory SkyWeatherData.formDto(WeatherDto dto) {
    return SkyWeatherData(
      id: dto.id ?? 0,
      main: dto.main ?? '',
      description: dto.description ?? '',
      icon: dto.icon ?? '',
    );
  }
}
