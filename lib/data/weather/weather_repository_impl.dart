import 'package:weatherly/data/weather/weather.dart';
import 'package:weatherly/domain/domain.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  final WeatherDataSource _weatherDataSource;

  WeatherRepositoryImpl({
    required WeatherDataSource weatherDataSource,
  }) : _weatherDataSource = weatherDataSource;

  @override
  Future<ResponseResult<WeatherData, FailureResult>> getWeather({
    required CoordinateData coordinate,
  }) async {
    final response = await _weatherDataSource.getWeather(
      lat: coordinate.latitude,
      lon: coordinate.longitude,
    );

    return response.isSuccess
        ? ResponseResult.success(
            WeatherData.formDto(response.success),
          )
        : ResponseResult.failure(response.failure);
  }

  @override
  Future<ResponseResult<WeatherData, FailureResult>> getCurrentLocationWeather() async {
    try {
      final location = await GeolocatorService.determinePosition();
      if (location == null) {
        return ResponseResult.failure(
          FailureResult(
            reason: FailureReasons.unknown,
            debugMessage: 'Location permissions are denied'.toString(),
            statusCode: '',
            errorMessage: '',
          ),
        );
      }

      final response = await _weatherDataSource.getWeather(
        lat: location.latitude,
        lon: location.longitude,
      );

      return response.isSuccess
          ? ResponseResult.success(
              WeatherData.formDto(response.success),
            )
          : ResponseResult.failure(response.failure);
    } catch (e) {
      return ResponseResult.failure(
        FailureResult(
          reason: FailureReasons.unknown,
          debugMessage: e.toString(),
          statusCode: '',
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
