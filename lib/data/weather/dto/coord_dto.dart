import 'package:freezed_annotation/freezed_annotation.dart';

part 'coord_dto.freezed.dart';
part 'coord_dto.g.dart';

@freezed
class CoordDto with _$CoordDto {
  const factory CoordDto({
    required double? lon,
    required double? lat,
  }) = _CoordDto;

  factory CoordDto.fromJson(Map<String, Object?> json) => _$CoordDtoFromJson(json);
}
