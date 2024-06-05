part of 'weather_screen_bloc.dart';

@freezed
class WeatherScreenEvent with _$WeatherScreenEvent {
  const factory WeatherScreenEvent.getData({
    required CoordinateViewModel coordinate,
  }) = _WeatherScreenGetDataEvent;

  const factory WeatherScreenEvent.saveLocation({
    required String name,
    required CoordinateViewModel coordinate,
    required VoidCallback onSuccess,
  }) = _WeatherScreenSaveLocationEvent;
}
