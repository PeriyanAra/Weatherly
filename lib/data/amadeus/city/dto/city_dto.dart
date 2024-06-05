import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherly/data/amadeus/amadeus.dart';

part 'city_dto.freezed.dart';
part 'city_dto.g.dart';

@freezed
class CityDto with _$CityDto {
  const factory CityDto({
    required String? name,
    required GeoCodeDto? geoCode,
    required String? type,
    required String? subType,
    required AddressDto? address,
  }) = _CityDto;

  factory CityDto.fromJson(Map<String, Object?> json) => _$CityDtoFromJson(json);
}
