import 'package:freezed_annotation/freezed_annotation.dart';

part 'links_dto.freezed.dart';
part 'links_dto.g.dart';

@freezed
class LinksDto with _$LinksDto {
  const factory LinksDto({
    required String? self,
  }) = _LinksDto;

  factory LinksDto.fromJson(Map<String, Object?> json) => _$LinksDtoFromJson(json);
}
