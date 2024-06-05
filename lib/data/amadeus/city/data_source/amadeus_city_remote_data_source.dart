import 'package:weatherly/data/amadeus/amadeus.dart';
import 'package:weatherly/data/amadeus/amadeus_api_service.dart';
import 'package:weatherly/data/client/client.dart';
import 'package:weatherly/domain/domain.dart';

class AmadeusCityRemoteDataSource extends AmadeusCityDataSource {
  final AmadeusApiService _amadeusApiService;

  AmadeusCityRemoteDataSource({
    required AmadeusApiService amadeusApiService,
  }) : _amadeusApiService = amadeusApiService;

  @override
  Future<ResponseResult<CitiesDto, FailureResult>> searchCities({
    required String prompt,
    int? resultCount,
  }) {
    return ApiRequestManager.guardApiCall<CitiesDto, CitiesDto>(
      invoker: () => _amadeusApiService.searchCities(
        keyword: prompt,
        max: resultCount ?? 3,
      ),
      mapper: (dto) => dto,
    );
  }

  @override
  Future<ResponseResult<List<CityDto>, FailureResult>> getSavedCities() {
    throw UnimplementedError();
  }

  @override
  Future<ResponseResult<List<CityDto>, FailureResult>> saveCity(CityDto city) {
    throw UnimplementedError();
  }
}

