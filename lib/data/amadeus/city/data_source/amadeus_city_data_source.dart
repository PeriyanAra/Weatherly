import 'package:weatherly/data/amadeus/amadeus.dart';
import 'package:weatherly/domain/common/result/result.dart';

abstract class AmadeusCityDataSource {
  Future<ResponseResult<CitiesDto, FailureResult>> searchCities({
    required String prompt,
    int? resultCount,
  });

  Future<ResponseResult<List<CityDto>, FailureResult>> saveCity(CityDto city);

  Future<ResponseResult<List<CityDto>, FailureResult>> getSavedCities();
}
