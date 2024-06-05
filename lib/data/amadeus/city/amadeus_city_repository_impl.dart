import 'package:weatherly/data/data.dart';
import 'package:weatherly/domain/domain.dart';

class AmadeusCityRepositoryImpl extends CityRepository {
  final AmadeusCityDataSource _amadeusRemoteCityDataSource;
  final AmadeusCityDataSource _amadeusLocalCityDataSource;

  AmadeusCityRepositoryImpl({
    required AmadeusCityDataSource amadeusRemoteCityDataSource,
    required AmadeusCityDataSource amadeusLocalCityDataSource,
  })  : _amadeusRemoteCityDataSource = amadeusRemoteCityDataSource,
        _amadeusLocalCityDataSource = amadeusLocalCityDataSource;

  @override
  Future<ResponseResult<List<CityData>, FailureResult>> getSavedCites() async {
    final citiesDtoResponse = await _amadeusLocalCityDataSource.getSavedCities();

    if (citiesDtoResponse.isFailed) {
      return ResponseResult.failure(citiesDtoResponse.failure);
    }

    return ResponseResult.success(
      citiesDtoResponse.success.map((dto) => CityData.fromDto(dto)).toList(),
    );
  }

  @override
  Future<ResponseResult<List<CityData>, FailureResult>> saveCity({
    required String cityName,
    required CoordinateData cityCoordinate,
  }) async {
    final citiesDtoResponse = await _amadeusLocalCityDataSource.saveCity(
      CityDto(
        type: '',
        subType: '',
        name: cityName,
        address: const AddressDto(
          countryCode: '',
          stateCode: '',
        ),
        geoCode: GeoCodeDto(
          latitude: cityCoordinate.latitude,
          longitude: cityCoordinate.longitude,
        ),
      ),
    );

    if (citiesDtoResponse.isFailed) {
      return ResponseResult.failure(citiesDtoResponse.failure);
    }

    return ResponseResult.success(
      citiesDtoResponse.success.map((dto) => CityData.fromDto(dto)).toList(),
    );
  }

  @override
  Future<ResponseResult<List<CityData>, FailureResult>> searchCity({
    required String cityName,
  }) async {
    final response = await _amadeusRemoteCityDataSource.searchCities(
      prompt: cityName,
    );

    if (response.isSuccess) {
      if (response.success.warnings?.isNotEmpty ?? false) {
        return ResponseResult.failure(
          FailureResult(
            reason: FailureReasons.unknown,
            debugMessage: response.success.warnings!.first.detail ?? '',
            statusCode: '',
            errorMessage: response.success.warnings!.first.detail ?? '',
          ),
        );
      }
      final filteredCities = response.success.data?.where(
        (e) => e.geoCode != null && e.geoCode?.latitude != null && e.geoCode?.longitude != null,
      );

      final cities = filteredCities?.map(CityData.fromDto).toList() ?? <CityData>[];

      return ResponseResult.success(
        cities,
      );
    } else {
      return ResponseResult.failure(response.failure);
    }
  }
}
