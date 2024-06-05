import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherly/data/weather/weather.dart';

part 'sys_data.freezed.dart';

@freezed
class SysData with _$SysData {
  const factory SysData({
    required int type,
    required int id,
    required String country,
    required int sunrise,
    required int sunset,
  }) = _SysData;

  const SysData._();

  factory SysData.formDto(SysDto? dto) {
    return SysData(
      type: dto?.type ?? 0,
      id: dto?.id ?? 0,
      country: dto?.country ?? '',
      sunrise: dto?.sunrise ?? 0,
      sunset: dto?.sunset ?? 0,
    );
  }
}
