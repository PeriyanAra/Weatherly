import 'package:chopper/chopper.dart';
import 'package:weatherly/data/amadeus/amadeus.dart';

part 'amadeus_api_service.chopper.dart';

@ChopperApi()
abstract class AmadeusApiService extends ChopperService {
  static AmadeusApiService create({ChopperClient? client}) {
    return _$AmadeusApiService(client);
  }

  @Post(path: 'security/oauth2/token')
  @formUrlEncoded
  Future<Response<AmadeusAuthDto>> getAccessToken({
    @Body() required Map<String, String> fields,
  });
  
  
  @Get(path: 'reference-data/locations/cities')
  Future<Response<CitiesDto>> searchCities({
   @Query() required String keyword,
   @Query() required int max,
  });
}
