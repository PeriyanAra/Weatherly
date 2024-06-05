import 'package:freezed_annotation/freezed_annotation.dart';

part 'warnings_dto.freezed.dart';
part 'warnings_dto.g.dart';

@freezed
class WarningsDto with _$WarningsDto {
  const factory WarningsDto({
    required int? code,
    required int? status,
    required String? title,
    required String? detail,
  }) = _WarningsDto;

  factory WarningsDto.fromJson(Map<String, Object?> json)
      => _$WarningsDtoFromJson(json);
}