import 'package:chopper/chopper.dart';
import 'package:weatherly/data/weather/weather.dart';

part 'weather_api_service.chopper.dart';

@ChopperApi()
abstract class WeatherApiService extends ChopperService {
  static WeatherApiService create({ChopperClient? client}) {
    return _$WeatherApiService(client);
  }

  
  @Get(path: 'weather')
  Future<Response<WeatherResponseDto>> getWeather({
   @Query() required double lat,
   @Query() required double lon,
   @Query() required String units,
   @Query() required String appid,
  });
}
