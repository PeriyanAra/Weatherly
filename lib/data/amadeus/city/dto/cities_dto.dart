import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherly/data/amadeus/amadeus.dart';

part 'cities_dto.freezed.dart';
part 'cities_dto.g.dart';

@freezed
class CitiesDto with _$CitiesDto {
  const factory CitiesDto({
    required MetaDto? meta,
    required List<CityDto>? data,
    required List<WarningsDto>? warnings,
  }) = _CitiesDto;

  factory CitiesDto.fromJson(Map<String, Object?> json) => _$CitiesDtoFromJson(json);
}


