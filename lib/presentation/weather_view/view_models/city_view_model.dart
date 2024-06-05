import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherly/domain/city/entities/entities.dart';
import 'package:weatherly/presentation/weather_view/view_models/coordinate_view_model.dart';

part 'city_view_model.freezed.dart';

@freezed
class CityViewModel with _$CityViewModel {
  const factory CityViewModel({
    required String city,
    required CoordinateViewModel coordinates,
  }) = _CityViewModel;

  const CityViewModel._();

  factory CityViewModel.fromEntity(CityData entity) {
    return CityViewModel(
      city: entity.name,
      coordinates: CoordinateViewModel.fromEntity(
        entity.coordinate,
      ),
    );
  }
}
