import 'package:weatherly/data/weather/weather.dart';
import 'package:weatherly/domain/common/result/result.dart';

abstract class WeatherDataSource {
  Future<ResponseResult<WeatherResponseDto, FailureResult>> getWeather({
    required double lat,
    required double lon,
  });
}
