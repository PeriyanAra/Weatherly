import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherly/data/amadeus/amadeus.dart';
import 'package:weatherly/domain/city/city.dart';
import 'package:weatherly/domain/common/entities/entities.dart';

part 'city_data.freezed.dart';

@freezed
class CityData with _$CityData {
  const factory CityData({
    required String type,
    required String subType,
    required String name,
    required AddressData address,
    required CoordinateData coordinate,
  }) = _CityData;

  const CityData._();

  factory CityData.fromDto(CityDto dto) {
    return CityData(
      type: dto.type ?? '',
      subType: dto.subType ?? '',
      name: dto.name ?? '',
      address: dto.address != null
          ? AddressData.fromDto(dto.address!)
          : const AddressData(countryCode: ''),
      coordinate: CoordinateData.formGeoDto(dto.geoCode),
    );
  }
}
