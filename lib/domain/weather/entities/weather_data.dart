import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherly/data/weather/weather.dart';
import 'package:weatherly/domain/domain.dart';

part 'weather_data.freezed.dart';

@freezed
class WeatherData with _$WeatherData {
  const factory WeatherData({
    required int id,
    required String locationName,
    required CoordinateData coordinate,
    required String base,
    required int visibility,
    required List<SkyWeatherData> skyWeather,
    required AirTemperatureData airTemperature,
    required WindData wind,
    required SysData sys,
  }) = _WeatherData;

  const WeatherData._();

  factory WeatherData.formDto(WeatherResponseDto dto) {
    return WeatherData(
      id: dto.id ?? -1,
      locationName: dto.name ?? '',
      coordinate: CoordinateData.formCoordDto(dto.coord),
      base: dto.base ??'',
      visibility: dto.visibility ?? 0,
      skyWeather: dto.weather?.map(SkyWeatherData.formDto).toList() ?? [],
      airTemperature: AirTemperatureData.formDto(dto.main),
      wind: WindData.formDto(dto.wind),
      sys: SysData.formDto(dto.sys),
    );
  }
}
