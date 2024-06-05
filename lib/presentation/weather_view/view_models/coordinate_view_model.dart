import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherly/domain/common/common.dart';

part 'coordinate_view_model.freezed.dart';

@freezed
class CoordinateViewModel with _$CoordinateViewModel {
  const factory CoordinateViewModel({
    required double longitude,
    required double latitude,
  }) = _CoordinateViewModel;

  const CoordinateViewModel._();

  factory CoordinateViewModel.fromEntity(CoordinateData entity) {
    return CoordinateViewModel(
      longitude: entity.longitude,
      latitude: entity.latitude,
    );
  }

  CoordinateData toEntity() {
    return CoordinateData(
      longitude: longitude,
      latitude: latitude,
    );
  }
}
