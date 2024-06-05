import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherly/data/amadeus/amadeus.dart';

part 'meta_dto.freezed.dart';
part 'meta_dto.g.dart';

@freezed
class MetaDto with _$MetaDto {
  const factory MetaDto({
    required int? count,
    required LinksDto? links,
  }) = _MetaDto;

  factory MetaDto.fromJson(Map<String, Object?> json) => _$MetaDtoFromJson(json);
}
