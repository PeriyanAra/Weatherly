part of 'weather_screen_bloc.dart';

@freezed
class WeatherScreenState with _$WeatherScreenState {
  const factory WeatherScreenState.loading() = WeatherScreenLoadingState;

  const factory WeatherScreenState.loaded({
    required WeatherDetailsViewModel viewModel,
    String? errorMessage,
  }) = WeatherScreenLoadedState;

  const factory WeatherScreenState.error({
    required String errorMessage,
  }) = WeatherScreenErrorState;
}
