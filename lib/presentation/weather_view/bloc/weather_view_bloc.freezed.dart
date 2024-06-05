// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherViewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cityName) searchCity,
    required TResult Function() getSavedCities,
    required TResult Function() getCurrentLocationWeather,
    required TResult Function() clearSearchedCities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cityName)? searchCity,
    TResult? Function()? getSavedCities,
    TResult? Function()? getCurrentLocationWeather,
    TResult? Function()? clearSearchedCities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cityName)? searchCity,
    TResult Function()? getSavedCities,
    TResult Function()? getCurrentLocationWeather,
    TResult Function()? clearSearchedCities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchCityEvent value) searchCity,
    required TResult Function(_GetSavedCitiesEvent value) getSavedCities,
    required TResult Function(_GetCurrentLocationWeatherEvent value)
        getCurrentLocationWeather,
    required TResult Function(_ClearSearchedCitiesEvent value)
        clearSearchedCities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchCityEvent value)? searchCity,
    TResult? Function(_GetSavedCitiesEvent value)? getSavedCities,
    TResult? Function(_GetCurrentLocationWeatherEvent value)?
        getCurrentLocationWeather,
    TResult? Function(_ClearSearchedCitiesEvent value)? clearSearchedCities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchCityEvent value)? searchCity,
    TResult Function(_GetSavedCitiesEvent value)? getSavedCities,
    TResult Function(_GetCurrentLocationWeatherEvent value)?
        getCurrentLocationWeather,
    TResult Function(_ClearSearchedCitiesEvent value)? clearSearchedCities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherViewEventCopyWith<$Res> {
  factory $WeatherViewEventCopyWith(
          WeatherViewEvent value, $Res Function(WeatherViewEvent) then) =
      _$WeatherViewEventCopyWithImpl<$Res, WeatherViewEvent>;
}

/// @nodoc
class _$WeatherViewEventCopyWithImpl<$Res, $Val extends WeatherViewEvent>
    implements $WeatherViewEventCopyWith<$Res> {
  _$WeatherViewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchCityEventImplCopyWith<$Res> {
  factory _$$SearchCityEventImplCopyWith(_$SearchCityEventImpl value,
          $Res Function(_$SearchCityEventImpl) then) =
      __$$SearchCityEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cityName});
}

/// @nodoc
class __$$SearchCityEventImplCopyWithImpl<$Res>
    extends _$WeatherViewEventCopyWithImpl<$Res, _$SearchCityEventImpl>
    implements _$$SearchCityEventImplCopyWith<$Res> {
  __$$SearchCityEventImplCopyWithImpl(
      _$SearchCityEventImpl _value, $Res Function(_$SearchCityEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
  }) {
    return _then(_$SearchCityEventImpl(
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchCityEventImpl implements _SearchCityEvent {
  const _$SearchCityEventImpl({required this.cityName});

  @override
  final String cityName;

  @override
  String toString() {
    return 'WeatherViewEvent.searchCity(cityName: $cityName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCityEventImpl &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCityEventImplCopyWith<_$SearchCityEventImpl> get copyWith =>
      __$$SearchCityEventImplCopyWithImpl<_$SearchCityEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cityName) searchCity,
    required TResult Function() getSavedCities,
    required TResult Function() getCurrentLocationWeather,
    required TResult Function() clearSearchedCities,
  }) {
    return searchCity(cityName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cityName)? searchCity,
    TResult? Function()? getSavedCities,
    TResult? Function()? getCurrentLocationWeather,
    TResult? Function()? clearSearchedCities,
  }) {
    return searchCity?.call(cityName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cityName)? searchCity,
    TResult Function()? getSavedCities,
    TResult Function()? getCurrentLocationWeather,
    TResult Function()? clearSearchedCities,
    required TResult orElse(),
  }) {
    if (searchCity != null) {
      return searchCity(cityName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchCityEvent value) searchCity,
    required TResult Function(_GetSavedCitiesEvent value) getSavedCities,
    required TResult Function(_GetCurrentLocationWeatherEvent value)
        getCurrentLocationWeather,
    required TResult Function(_ClearSearchedCitiesEvent value)
        clearSearchedCities,
  }) {
    return searchCity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchCityEvent value)? searchCity,
    TResult? Function(_GetSavedCitiesEvent value)? getSavedCities,
    TResult? Function(_GetCurrentLocationWeatherEvent value)?
        getCurrentLocationWeather,
    TResult? Function(_ClearSearchedCitiesEvent value)? clearSearchedCities,
  }) {
    return searchCity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchCityEvent value)? searchCity,
    TResult Function(_GetSavedCitiesEvent value)? getSavedCities,
    TResult Function(_GetCurrentLocationWeatherEvent value)?
        getCurrentLocationWeather,
    TResult Function(_ClearSearchedCitiesEvent value)? clearSearchedCities,
    required TResult orElse(),
  }) {
    if (searchCity != null) {
      return searchCity(this);
    }
    return orElse();
  }
}

abstract class _SearchCityEvent implements WeatherViewEvent {
  const factory _SearchCityEvent({required final String cityName}) =
      _$SearchCityEventImpl;

  String get cityName;
  @JsonKey(ignore: true)
  _$$SearchCityEventImplCopyWith<_$SearchCityEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSavedCitiesEventImplCopyWith<$Res> {
  factory _$$GetSavedCitiesEventImplCopyWith(_$GetSavedCitiesEventImpl value,
          $Res Function(_$GetSavedCitiesEventImpl) then) =
      __$$GetSavedCitiesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSavedCitiesEventImplCopyWithImpl<$Res>
    extends _$WeatherViewEventCopyWithImpl<$Res, _$GetSavedCitiesEventImpl>
    implements _$$GetSavedCitiesEventImplCopyWith<$Res> {
  __$$GetSavedCitiesEventImplCopyWithImpl(_$GetSavedCitiesEventImpl _value,
      $Res Function(_$GetSavedCitiesEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetSavedCitiesEventImpl implements _GetSavedCitiesEvent {
  const _$GetSavedCitiesEventImpl();

  @override
  String toString() {
    return 'WeatherViewEvent.getSavedCities()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSavedCitiesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cityName) searchCity,
    required TResult Function() getSavedCities,
    required TResult Function() getCurrentLocationWeather,
    required TResult Function() clearSearchedCities,
  }) {
    return getSavedCities();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cityName)? searchCity,
    TResult? Function()? getSavedCities,
    TResult? Function()? getCurrentLocationWeather,
    TResult? Function()? clearSearchedCities,
  }) {
    return getSavedCities?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cityName)? searchCity,
    TResult Function()? getSavedCities,
    TResult Function()? getCurrentLocationWeather,
    TResult Function()? clearSearchedCities,
    required TResult orElse(),
  }) {
    if (getSavedCities != null) {
      return getSavedCities();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchCityEvent value) searchCity,
    required TResult Function(_GetSavedCitiesEvent value) getSavedCities,
    required TResult Function(_GetCurrentLocationWeatherEvent value)
        getCurrentLocationWeather,
    required TResult Function(_ClearSearchedCitiesEvent value)
        clearSearchedCities,
  }) {
    return getSavedCities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchCityEvent value)? searchCity,
    TResult? Function(_GetSavedCitiesEvent value)? getSavedCities,
    TResult? Function(_GetCurrentLocationWeatherEvent value)?
        getCurrentLocationWeather,
    TResult? Function(_ClearSearchedCitiesEvent value)? clearSearchedCities,
  }) {
    return getSavedCities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchCityEvent value)? searchCity,
    TResult Function(_GetSavedCitiesEvent value)? getSavedCities,
    TResult Function(_GetCurrentLocationWeatherEvent value)?
        getCurrentLocationWeather,
    TResult Function(_ClearSearchedCitiesEvent value)? clearSearchedCities,
    required TResult orElse(),
  }) {
    if (getSavedCities != null) {
      return getSavedCities(this);
    }
    return orElse();
  }
}

abstract class _GetSavedCitiesEvent implements WeatherViewEvent {
  const factory _GetSavedCitiesEvent() = _$GetSavedCitiesEventImpl;
}

/// @nodoc
abstract class _$$GetCurrentLocationWeatherEventImplCopyWith<$Res> {
  factory _$$GetCurrentLocationWeatherEventImplCopyWith(
          _$GetCurrentLocationWeatherEventImpl value,
          $Res Function(_$GetCurrentLocationWeatherEventImpl) then) =
      __$$GetCurrentLocationWeatherEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCurrentLocationWeatherEventImplCopyWithImpl<$Res>
    extends _$WeatherViewEventCopyWithImpl<$Res,
        _$GetCurrentLocationWeatherEventImpl>
    implements _$$GetCurrentLocationWeatherEventImplCopyWith<$Res> {
  __$$GetCurrentLocationWeatherEventImplCopyWithImpl(
      _$GetCurrentLocationWeatherEventImpl _value,
      $Res Function(_$GetCurrentLocationWeatherEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCurrentLocationWeatherEventImpl
    implements _GetCurrentLocationWeatherEvent {
  const _$GetCurrentLocationWeatherEventImpl();

  @override
  String toString() {
    return 'WeatherViewEvent.getCurrentLocationWeather()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCurrentLocationWeatherEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cityName) searchCity,
    required TResult Function() getSavedCities,
    required TResult Function() getCurrentLocationWeather,
    required TResult Function() clearSearchedCities,
  }) {
    return getCurrentLocationWeather();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cityName)? searchCity,
    TResult? Function()? getSavedCities,
    TResult? Function()? getCurrentLocationWeather,
    TResult? Function()? clearSearchedCities,
  }) {
    return getCurrentLocationWeather?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cityName)? searchCity,
    TResult Function()? getSavedCities,
    TResult Function()? getCurrentLocationWeather,
    TResult Function()? clearSearchedCities,
    required TResult orElse(),
  }) {
    if (getCurrentLocationWeather != null) {
      return getCurrentLocationWeather();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchCityEvent value) searchCity,
    required TResult Function(_GetSavedCitiesEvent value) getSavedCities,
    required TResult Function(_GetCurrentLocationWeatherEvent value)
        getCurrentLocationWeather,
    required TResult Function(_ClearSearchedCitiesEvent value)
        clearSearchedCities,
  }) {
    return getCurrentLocationWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchCityEvent value)? searchCity,
    TResult? Function(_GetSavedCitiesEvent value)? getSavedCities,
    TResult? Function(_GetCurrentLocationWeatherEvent value)?
        getCurrentLocationWeather,
    TResult? Function(_ClearSearchedCitiesEvent value)? clearSearchedCities,
  }) {
    return getCurrentLocationWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchCityEvent value)? searchCity,
    TResult Function(_GetSavedCitiesEvent value)? getSavedCities,
    TResult Function(_GetCurrentLocationWeatherEvent value)?
        getCurrentLocationWeather,
    TResult Function(_ClearSearchedCitiesEvent value)? clearSearchedCities,
    required TResult orElse(),
  }) {
    if (getCurrentLocationWeather != null) {
      return getCurrentLocationWeather(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentLocationWeatherEvent implements WeatherViewEvent {
  const factory _GetCurrentLocationWeatherEvent() =
      _$GetCurrentLocationWeatherEventImpl;
}

/// @nodoc
abstract class _$$ClearSearchedCitiesEventImplCopyWith<$Res> {
  factory _$$ClearSearchedCitiesEventImplCopyWith(
          _$ClearSearchedCitiesEventImpl value,
          $Res Function(_$ClearSearchedCitiesEventImpl) then) =
      __$$ClearSearchedCitiesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearSearchedCitiesEventImplCopyWithImpl<$Res>
    extends _$WeatherViewEventCopyWithImpl<$Res, _$ClearSearchedCitiesEventImpl>
    implements _$$ClearSearchedCitiesEventImplCopyWith<$Res> {
  __$$ClearSearchedCitiesEventImplCopyWithImpl(
      _$ClearSearchedCitiesEventImpl _value,
      $Res Function(_$ClearSearchedCitiesEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearSearchedCitiesEventImpl implements _ClearSearchedCitiesEvent {
  const _$ClearSearchedCitiesEventImpl();

  @override
  String toString() {
    return 'WeatherViewEvent.clearSearchedCities()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearSearchedCitiesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cityName) searchCity,
    required TResult Function() getSavedCities,
    required TResult Function() getCurrentLocationWeather,
    required TResult Function() clearSearchedCities,
  }) {
    return clearSearchedCities();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cityName)? searchCity,
    TResult? Function()? getSavedCities,
    TResult? Function()? getCurrentLocationWeather,
    TResult? Function()? clearSearchedCities,
  }) {
    return clearSearchedCities?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cityName)? searchCity,
    TResult Function()? getSavedCities,
    TResult Function()? getCurrentLocationWeather,
    TResult Function()? clearSearchedCities,
    required TResult orElse(),
  }) {
    if (clearSearchedCities != null) {
      return clearSearchedCities();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchCityEvent value) searchCity,
    required TResult Function(_GetSavedCitiesEvent value) getSavedCities,
    required TResult Function(_GetCurrentLocationWeatherEvent value)
        getCurrentLocationWeather,
    required TResult Function(_ClearSearchedCitiesEvent value)
        clearSearchedCities,
  }) {
    return clearSearchedCities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchCityEvent value)? searchCity,
    TResult? Function(_GetSavedCitiesEvent value)? getSavedCities,
    TResult? Function(_GetCurrentLocationWeatherEvent value)?
        getCurrentLocationWeather,
    TResult? Function(_ClearSearchedCitiesEvent value)? clearSearchedCities,
  }) {
    return clearSearchedCities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchCityEvent value)? searchCity,
    TResult Function(_GetSavedCitiesEvent value)? getSavedCities,
    TResult Function(_GetCurrentLocationWeatherEvent value)?
        getCurrentLocationWeather,
    TResult Function(_ClearSearchedCitiesEvent value)? clearSearchedCities,
    required TResult orElse(),
  }) {
    if (clearSearchedCities != null) {
      return clearSearchedCities(this);
    }
    return orElse();
  }
}

abstract class _ClearSearchedCitiesEvent implements WeatherViewEvent {
  const factory _ClearSearchedCitiesEvent() = _$ClearSearchedCitiesEventImpl;
}

/// @nodoc
mixin _$WeatherViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<WeatherDetailsViewModel> weatherLocations,
            String? errorMessage)
        loaded,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<WeatherDetailsViewModel> weatherLocations,
            String? errorMessage)?
        loaded,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<WeatherDetailsViewModel> weatherLocations,
            String? errorMessage)?
        loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherViewLoadingState value) loading,
    required TResult Function(WeatherViewLoadedState value) loaded,
    required TResult Function(WeatherViewErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherViewLoadingState value)? loading,
    TResult? Function(WeatherViewLoadedState value)? loaded,
    TResult? Function(WeatherViewErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherViewLoadingState value)? loading,
    TResult Function(WeatherViewLoadedState value)? loaded,
    TResult Function(WeatherViewErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherViewStateCopyWith<$Res> {
  factory $WeatherViewStateCopyWith(
          WeatherViewState value, $Res Function(WeatherViewState) then) =
      _$WeatherViewStateCopyWithImpl<$Res, WeatherViewState>;
}

/// @nodoc
class _$WeatherViewStateCopyWithImpl<$Res, $Val extends WeatherViewState>
    implements $WeatherViewStateCopyWith<$Res> {
  _$WeatherViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WeatherViewLoadingStateImplCopyWith<$Res> {
  factory _$$WeatherViewLoadingStateImplCopyWith(
          _$WeatherViewLoadingStateImpl value,
          $Res Function(_$WeatherViewLoadingStateImpl) then) =
      __$$WeatherViewLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherViewLoadingStateImplCopyWithImpl<$Res>
    extends _$WeatherViewStateCopyWithImpl<$Res, _$WeatherViewLoadingStateImpl>
    implements _$$WeatherViewLoadingStateImplCopyWith<$Res> {
  __$$WeatherViewLoadingStateImplCopyWithImpl(
      _$WeatherViewLoadingStateImpl _value,
      $Res Function(_$WeatherViewLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WeatherViewLoadingStateImpl implements WeatherViewLoadingState {
  const _$WeatherViewLoadingStateImpl();

  @override
  String toString() {
    return 'WeatherViewState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherViewLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<WeatherDetailsViewModel> weatherLocations,
            String? errorMessage)
        loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<WeatherDetailsViewModel> weatherLocations,
            String? errorMessage)?
        loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<WeatherDetailsViewModel> weatherLocations,
            String? errorMessage)?
        loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherViewLoadingState value) loading,
    required TResult Function(WeatherViewLoadedState value) loaded,
    required TResult Function(WeatherViewErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherViewLoadingState value)? loading,
    TResult? Function(WeatherViewLoadedState value)? loaded,
    TResult? Function(WeatherViewErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherViewLoadingState value)? loading,
    TResult Function(WeatherViewLoadedState value)? loaded,
    TResult Function(WeatherViewErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WeatherViewLoadingState implements WeatherViewState {
  const factory WeatherViewLoadingState() = _$WeatherViewLoadingStateImpl;
}

/// @nodoc
abstract class _$$WeatherViewLoadedStateImplCopyWith<$Res> {
  factory _$$WeatherViewLoadedStateImplCopyWith(
          _$WeatherViewLoadedStateImpl value,
          $Res Function(_$WeatherViewLoadedStateImpl) then) =
      __$$WeatherViewLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<WeatherDetailsViewModel> weatherLocations, String? errorMessage});
}

/// @nodoc
class __$$WeatherViewLoadedStateImplCopyWithImpl<$Res>
    extends _$WeatherViewStateCopyWithImpl<$Res, _$WeatherViewLoadedStateImpl>
    implements _$$WeatherViewLoadedStateImplCopyWith<$Res> {
  __$$WeatherViewLoadedStateImplCopyWithImpl(
      _$WeatherViewLoadedStateImpl _value,
      $Res Function(_$WeatherViewLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherLocations = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$WeatherViewLoadedStateImpl(
      weatherLocations: null == weatherLocations
          ? _value._weatherLocations
          : weatherLocations // ignore: cast_nullable_to_non_nullable
              as List<WeatherDetailsViewModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$WeatherViewLoadedStateImpl implements WeatherViewLoadedState {
  const _$WeatherViewLoadedStateImpl(
      {required final List<WeatherDetailsViewModel> weatherLocations,
      this.errorMessage})
      : _weatherLocations = weatherLocations;

  final List<WeatherDetailsViewModel> _weatherLocations;
  @override
  List<WeatherDetailsViewModel> get weatherLocations {
    if (_weatherLocations is EqualUnmodifiableListView)
      return _weatherLocations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherLocations);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'WeatherViewState.loaded(weatherLocations: $weatherLocations, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherViewLoadedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._weatherLocations, _weatherLocations) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_weatherLocations), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherViewLoadedStateImplCopyWith<_$WeatherViewLoadedStateImpl>
      get copyWith => __$$WeatherViewLoadedStateImplCopyWithImpl<
          _$WeatherViewLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<WeatherDetailsViewModel> weatherLocations,
            String? errorMessage)
        loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loaded(weatherLocations, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<WeatherDetailsViewModel> weatherLocations,
            String? errorMessage)?
        loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loaded?.call(weatherLocations, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<WeatherDetailsViewModel> weatherLocations,
            String? errorMessage)?
        loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(weatherLocations, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherViewLoadingState value) loading,
    required TResult Function(WeatherViewLoadedState value) loaded,
    required TResult Function(WeatherViewErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherViewLoadingState value)? loading,
    TResult? Function(WeatherViewLoadedState value)? loaded,
    TResult? Function(WeatherViewErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherViewLoadingState value)? loading,
    TResult Function(WeatherViewLoadedState value)? loaded,
    TResult Function(WeatherViewErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class WeatherViewLoadedState implements WeatherViewState {
  const factory WeatherViewLoadedState(
      {required final List<WeatherDetailsViewModel> weatherLocations,
      final String? errorMessage}) = _$WeatherViewLoadedStateImpl;

  List<WeatherDetailsViewModel> get weatherLocations;
  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$WeatherViewLoadedStateImplCopyWith<_$WeatherViewLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeatherViewErrorStateImplCopyWith<$Res> {
  factory _$$WeatherViewErrorStateImplCopyWith(
          _$WeatherViewErrorStateImpl value,
          $Res Function(_$WeatherViewErrorStateImpl) then) =
      __$$WeatherViewErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$WeatherViewErrorStateImplCopyWithImpl<$Res>
    extends _$WeatherViewStateCopyWithImpl<$Res, _$WeatherViewErrorStateImpl>
    implements _$$WeatherViewErrorStateImplCopyWith<$Res> {
  __$$WeatherViewErrorStateImplCopyWithImpl(_$WeatherViewErrorStateImpl _value,
      $Res Function(_$WeatherViewErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$WeatherViewErrorStateImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WeatherViewErrorStateImpl implements WeatherViewErrorState {
  const _$WeatherViewErrorStateImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'WeatherViewState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherViewErrorStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherViewErrorStateImplCopyWith<_$WeatherViewErrorStateImpl>
      get copyWith => __$$WeatherViewErrorStateImplCopyWithImpl<
          _$WeatherViewErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<WeatherDetailsViewModel> weatherLocations,
            String? errorMessage)
        loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<WeatherDetailsViewModel> weatherLocations,
            String? errorMessage)?
        loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<WeatherDetailsViewModel> weatherLocations,
            String? errorMessage)?
        loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherViewLoadingState value) loading,
    required TResult Function(WeatherViewLoadedState value) loaded,
    required TResult Function(WeatherViewErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherViewLoadingState value)? loading,
    TResult? Function(WeatherViewLoadedState value)? loaded,
    TResult? Function(WeatherViewErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherViewLoadingState value)? loading,
    TResult Function(WeatherViewLoadedState value)? loaded,
    TResult Function(WeatherViewErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class WeatherViewErrorState implements WeatherViewState {
  const factory WeatherViewErrorState({required final String errorMessage}) =
      _$WeatherViewErrorStateImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$WeatherViewErrorStateImplCopyWith<_$WeatherViewErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
