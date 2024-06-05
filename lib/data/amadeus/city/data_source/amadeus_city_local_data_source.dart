import 'dart:convert';

import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:weatherly/data/data.dart';
import 'package:weatherly/data/database/database_constants.dart';
import 'package:weatherly/domain/common/result/failure_result.dart';
import 'package:weatherly/domain/common/result/response_result.dart';

class AmadeusCityLocalDataSource implements AmadeusCityDataSource {
  AmadeusCityLocalDataSource({
    required Database database,
  }) : _database = database;

  final Database _database;

  @override
  Future<ResponseResult<List<CityDto>, FailureResult>> getSavedCities() async {
    try {
      final data = await _database.rawQuery(
        'SELECT * FROM ${DatabaseConstants.locations}',
      );

      if (data.isEmpty) return const ResponseResult.success([]);

      final cities = <CityDto>[];

      for (final element in data) {
        final cityJson = {...element};
        final Map<String, dynamic> coordinateJson = jsonDecode(
          cityJson[DatabaseConstants.coordinate].toString(),
        );

        cityJson['geoCode'] = coordinateJson;

        cities.add(CityDto.fromJson(cityJson));
      }

      return ResponseResult.success(cities);
    } catch (e) {
      return ResponseResult.failure(
        FailureResult(
          reason: FailureReasons.unknown,
          debugMessage: e.toString(),
          errorMessage: e.toString(),
          statusCode: '',
        ),
      );
    }
  }

  @override
  Future<ResponseResult<List<CityDto>, FailureResult>> saveCity(CityDto city) async {
    try {
      final savedCitiesResponse = await getSavedCities();

      if (savedCitiesResponse.isFailed) {
        return ResponseResult.failure(savedCitiesResponse.failure);
      }


      final savedCities = savedCitiesResponse.success;

      final isCityAlreadySaved = savedCities.any((e) =>
          e.geoCode?.latitude == city.geoCode?.latitude &&
          e.geoCode?.longitude == city.geoCode?.longitude);

      if (isCityAlreadySaved) {
        return ResponseResult.success(savedCities);
      }

      final coordinateJson = jsonEncode(city.geoCode?.toJson());

      await _database.rawInsert(
        '''
      INSERT INTO ${DatabaseConstants.locations}(
        ${DatabaseConstants.name},
        ${DatabaseConstants.coordinate}
        ) VALUES(?, ?)''',
        [
          city.name,
          coordinateJson,
        ],
      );
      final cities = [...savedCities, city];

      return ResponseResult.success(cities);
    } catch (e) {
      return ResponseResult.failure(
        FailureResult(
          reason: FailureReasons.unknown,
          debugMessage: e.toString(),
          errorMessage: e.toString(),
          statusCode: '',
        ),
      );
    }
  }

  @override
  Future<ResponseResult<CitiesDto, FailureResult>> searchCities({
    required String prompt,
    int? resultCount,
  }) {
    throw UnimplementedError();
  }
}
