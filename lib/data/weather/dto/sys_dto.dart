import 'package:freezed_annotation/freezed_annotation.dart';

part 'sys_dto.freezed.dart';
part 'sys_dto.g.dart';

@freezed
class SysDto with _$SysDto {
  const factory SysDto({
    required int? type,
    required int? id,
    required String? country,
    required int? sunrise,
    required int? sunset,
  }) = _SysDto;

  factory SysDto.fromJson(Map<String, Object?> json) => _$SysDtoFromJson(json);
}
