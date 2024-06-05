import 'package:freezed_annotation/freezed_annotation.dart';

part 'geo_code_dto.freezed.dart';
part 'geo_code_dto.g.dart';

@freezed
class GeoCodeDto with _$GeoCodeDto {
  const factory GeoCodeDto({
    required double? latitude,
    required double? longitude,
  }) = _GeoCodeDto;

  factory GeoCodeDto.fromJson(Map<String, Object?> json) => _$GeoCodeDtoFromJson(json);
}
