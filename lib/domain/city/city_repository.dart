import 'package:weatherly/domain/city/city.dart';
import 'package:weatherly/domain/common/common.dart';

abstract class CityRepository {
  Future<ResponseResult<List<CityData>, FailureResult>> searchCity({required String cityName});

  Future<ResponseResult<List<CityData>, FailureResult>> saveCity({
    required String cityName,
    required CoordinateData cityCoordinate,
  });

  Future<ResponseResult<List<CityData>, FailureResult>> getSavedCites();
}
