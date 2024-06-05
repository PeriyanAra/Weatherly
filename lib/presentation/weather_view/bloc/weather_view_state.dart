part of 'weather_view_bloc.dart';

@freezed
class WeatherViewState with _$WeatherViewState {
  const factory WeatherViewState.loading() = WeatherViewLoadingState;

  const factory WeatherViewState.loaded({
    required List<WeatherDetailsViewModel> weatherLocations,
    String? errorMessage,
  }) = WeatherViewLoadedState;

  const factory WeatherViewState.error({
    required String errorMessage,
  }) = WeatherViewErrorState;
}
