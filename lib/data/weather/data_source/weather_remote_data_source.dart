import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weatherly/data/client/client.dart';
import 'package:weatherly/data/weather/weather.dart';
import 'package:weatherly/data/weather/weather_api_service.dart';
import 'package:weatherly/domain/domain.dart';

class WeatherRemoteDataSource extends WeatherDataSource {
  final WeatherApiService _weatherApiService;
  WeatherRemoteDataSource({
    required WeatherApiService weatherApiService,
  }) : _weatherApiService = weatherApiService;

  @override
  Future<ResponseResult<WeatherResponseDto, FailureResult>> getWeather({
    required double lat,
    required double lon,
  }) {
    return ApiRequestManager.guardApiCall<WeatherResponseDto, WeatherResponseDto>(
      invoker: () => _weatherApiService.getWeather(
        lat: lat,
        lon: lon,
        appid: dotenv.env['WeatherApiKey'] ?? "",
        units: 'metric',
      ),
      mapper: (dto) => dto,
    );
  }
}
