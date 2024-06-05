import 'package:weatherly/domain/common/common.dart';
import 'package:weatherly/domain/weather/entities/entities.dart';

abstract class WeatherRepository {
  Future<ResponseResult<WeatherData, FailureResult>> getWeather({
    required CoordinateData coordinate,
  });

  Future<ResponseResult<WeatherData, FailureResult>> getCurrentLocationWeather();
}
