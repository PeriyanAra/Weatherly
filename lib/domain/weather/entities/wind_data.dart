import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherly/data/weather/weather.dart';

part 'wind_data.freezed.dart';

@freezed
class WindData with _$WindData {
  const factory WindData({
    required double speed,
    required int deg,
  }) = _WindData;

  const WindData._();

  factory WindData.formDto(WindDto? dto) {
    return WindData(
      speed: dto?.speed ?? 0.0,
      deg: dto?.deg ?? 0,
    );
  }
}
