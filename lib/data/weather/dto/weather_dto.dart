import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_dto.freezed.dart';
part 'weather_dto.g.dart';

@freezed
class WeatherDto with _$WeatherDto {
  const factory WeatherDto({
    required int? id,
    required String? main,
    required String? description,
    required String? icon,
  }) = _WeatherDto;

  factory WeatherDto.fromJson(Map<String, Object?> json) => _$WeatherDtoFromJson(json);
}
