import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherly/data/amadeus/amadeus.dart';
import 'package:weatherly/data/weather/weather.dart';

part 'coordinate_data.freezed.dart';

@freezed
class CoordinateData with _$CoordinateData {
  const factory CoordinateData({
    required double longitude,
    required double latitude,
  }) = _CoordinateData;

  const CoordinateData._();

  factory CoordinateData.formCoordDto(CoordDto? dto) {
    return CoordinateData(
      longitude: dto?.lon ?? 0.0,
      latitude: dto?.lat ?? 0.0,
    );
  }

  factory CoordinateData.formGeoDto(GeoCodeDto? dto) {
    return CoordinateData(
      longitude: dto?.longitude ?? 0.0,
      latitude: dto?.latitude ?? 0.0,
    );
  }
}
