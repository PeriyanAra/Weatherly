import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherly/data/weather/weather.dart';

part 'air_temperature_data.freezed.dart';

@freezed
class AirTemperatureData with _$AirTemperatureData {
  const factory AirTemperatureData({
    required double temperature,
    required double feelsLike,
    required double maxTemperature,
    required double minTemperature,
    required int pressure,
    required int humidity,
  }) = _AirTemperatureData;

  const AirTemperatureData._();

  factory AirTemperatureData.formDto(MainDto? dto) {
    return AirTemperatureData(
      temperature: dto?.temp ?? 0.0,
      feelsLike: dto?.feelsLike ?? 0.0,
      maxTemperature: dto?.tempMax ?? 0.0,
      minTemperature: dto?.tempMin ?? 0.0,
      pressure: dto?.pressure ?? 0,
      humidity: dto?.humidity ?? 0,
    );
  }
}
