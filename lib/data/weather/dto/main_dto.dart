// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_dto.freezed.dart';
part 'main_dto.g.dart';

@freezed
class MainDto with _$MainDto {
  const factory MainDto({
    required double? temp,
    @JsonKey(name: 'feels_like') required double? feelsLike,
    @JsonKey(name: 'temp_min') required double? tempMin,
    @JsonKey(name: 'temp_max') required double? tempMax,
    required int? pressure,
    required int? humidity,
  }) = _MainDto;

  factory MainDto.fromJson(Map<String, Object?> json) => _$MainDtoFromJson(json);
}
