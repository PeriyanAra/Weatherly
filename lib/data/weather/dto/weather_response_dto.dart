import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherly/data/weather/weather.dart';

part 'weather_response_dto.freezed.dart';
part 'weather_response_dto.g.dart';

@freezed
class WeatherResponseDto with _$WeatherResponseDto {
  const factory WeatherResponseDto({
    required CoordDto? coord,
    required List<WeatherDto>? weather,
    required String? base,
    required MainDto? main,
    required int? visibility,
    required WindDto? wind,
    required CloudsDto? clouds,
    required int? dt,
    required SysDto? sys,
    required int? timezone,
    required int? id,
    required String? name,
    required int? cod,
  }) = _WeatherResponseDto;

  factory WeatherResponseDto.fromJson(Map<String, Object?> json) => _$WeatherResponseDtoFromJson(json);
}
