import 'package:freezed_annotation/freezed_annotation.dart';

part 'clouds_dto.freezed.dart';
part 'clouds_dto.g.dart';

@freezed
class CloudsDto with _$CloudsDto {
  const factory CloudsDto({
    required int all,
  }) = _CloudsDto;

  factory CloudsDto.fromJson(Map<String, Object?> json) => _$CloudsDtoFromJson(json);
}
