import 'package:freezed_annotation/freezed_annotation.dart';

part 'wind_dto.freezed.dart';
part 'wind_dto.g.dart';

@freezed
class WindDto with _$WindDto {
  const factory WindDto({
    required double? speed,
    required int? deg,
  }) = _WindDto;

  factory WindDto.fromJson(Map<String, Object?> json) => _$WindDtoFromJson(json);
}
