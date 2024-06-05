// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherData {
  int get id => throw _privateConstructorUsedError;
  String get locationName => throw _privateConstructorUsedError;
  CoordinateData get coordinate => throw _privateConstructorUsedError;
  String get base => throw _privateConstructorUsedError;
  int get visibility => throw _privateConstructorUsedError;
  List<SkyWeatherData> get skyWeather => throw _privateConstructorUsedError;
  AirTemperatureData get airTemperature => throw _privateConstructorUsedError;
  WindData get wind => throw _privateConstructorUsedError;
  SysData get sys => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherDataCopyWith<WeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDataCopyWith<$Res> {
  factory $WeatherDataCopyWith(
          WeatherData value, $Res Function(WeatherData) then) =
      _$WeatherDataCopyWithImpl<$Res, WeatherData>;
  @useResult
  $Res call(
      {int id,
      String locationName,
      CoordinateData coordinate,
      String base,
      int visibility,
      List<SkyWeatherData> skyWeather,
      AirTemperatureData airTemperature,
      WindData wind,
      SysData sys});

  $CoordinateDataCopyWith<$Res> get coordinate;
  $AirTemperatureDataCopyWith<$Res> get airTemperature;
  $WindDataCopyWith<$Res> get wind;
  $SysDataCopyWith<$Res> get sys;
}

/// @nodoc
class _$WeatherDataCopyWithImpl<$Res, $Val extends WeatherData>
    implements $WeatherDataCopyWith<$Res> {
  _$WeatherDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? locationName = null,
    Object? coordinate = null,
    Object? base = null,
    Object? visibility = null,
    Object? skyWeather = null,
    Object? airTemperature = null,
    Object? wind = null,
    Object? sys = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      coordinate: null == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as CoordinateData,
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      skyWeather: null == skyWeather
          ? _value.skyWeather
          : skyWeather // ignore: cast_nullable_to_non_nullable
              as List<SkyWeatherData>,
      airTemperature: null == airTemperature
          ? _value.airTemperature
          : airTemperature // ignore: cast_nullable_to_non_nullable
              as AirTemperatureData,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindData,
      sys: null == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as SysData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordinateDataCopyWith<$Res> get coordinate {
    return $CoordinateDataCopyWith<$Res>(_value.coordinate, (value) {
      return _then(_value.copyWith(coordinate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AirTemperatureDataCopyWith<$Res> get airTemperature {
    return $AirTemperatureDataCopyWith<$Res>(_value.airTemperature, (value) {
      return _then(_value.copyWith(airTemperature: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WindDataCopyWith<$Res> get wind {
    return $WindDataCopyWith<$Res>(_value.wind, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SysDataCopyWith<$Res> get sys {
    return $SysDataCopyWith<$Res>(_value.sys, (value) {
      return _then(_value.copyWith(sys: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherDataImplCopyWith<$Res>
    implements $WeatherDataCopyWith<$Res> {
  factory _$$WeatherDataImplCopyWith(
          _$WeatherDataImpl value, $Res Function(_$WeatherDataImpl) then) =
      __$$WeatherDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String locationName,
      CoordinateData coordinate,
      String base,
      int visibility,
      List<SkyWeatherData> skyWeather,
      AirTemperatureData airTemperature,
      WindData wind,
      SysData sys});

  @override
  $CoordinateDataCopyWith<$Res> get coordinate;
  @override
  $AirTemperatureDataCopyWith<$Res> get airTemperature;
  @override
  $WindDataCopyWith<$Res> get wind;
  @override
  $SysDataCopyWith<$Res> get sys;
}

/// @nodoc
class __$$WeatherDataImplCopyWithImpl<$Res>
    extends _$WeatherDataCopyWithImpl<$Res, _$WeatherDataImpl>
    implements _$$WeatherDataImplCopyWith<$Res> {
  __$$WeatherDataImplCopyWithImpl(
      _$WeatherDataImpl _value, $Res Function(_$WeatherDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? locationName = null,
    Object? coordinate = null,
    Object? base = null,
    Object? visibility = null,
    Object? skyWeather = null,
    Object? airTemperature = null,
    Object? wind = null,
    Object? sys = null,
  }) {
    return _then(_$WeatherDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      coordinate: null == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as CoordinateData,
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      skyWeather: null == skyWeather
          ? _value._skyWeather
          : skyWeather // ignore: cast_nullable_to_non_nullable
              as List<SkyWeatherData>,
      airTemperature: null == airTemperature
          ? _value.airTemperature
          : airTemperature // ignore: cast_nullable_to_non_nullable
              as AirTemperatureData,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindData,
      sys: null == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as SysData,
    ));
  }
}

/// @nodoc

class _$WeatherDataImpl extends _WeatherData {
  const _$WeatherDataImpl(
      {required this.id,
      required this.locationName,
      required this.coordinate,
      required this.base,
      required this.visibility,
      required final List<SkyWeatherData> skyWeather,
      required this.airTemperature,
      required this.wind,
      required this.sys})
      : _skyWeather = skyWeather,
        super._();

  @override
  final int id;
  @override
  final String locationName;
  @override
  final CoordinateData coordinate;
  @override
  final String base;
  @override
  final int visibility;
  final List<SkyWeatherData> _skyWeather;
  @override
  List<SkyWeatherData> get skyWeather {
    if (_skyWeather is EqualUnmodifiableListView) return _skyWeather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skyWeather);
  }

  @override
  final AirTemperatureData airTemperature;
  @override
  final WindData wind;
  @override
  final SysData sys;

  @override
  String toString() {
    return 'WeatherData(id: $id, locationName: $locationName, coordinate: $coordinate, base: $base, visibility: $visibility, skyWeather: $skyWeather, airTemperature: $airTemperature, wind: $wind, sys: $sys)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.coordinate, coordinate) ||
                other.coordinate == coordinate) &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            const DeepCollectionEquality()
                .equals(other._skyWeather, _skyWeather) &&
            (identical(other.airTemperature, airTemperature) ||
                other.airTemperature == airTemperature) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.sys, sys) || other.sys == sys));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      locationName,
      coordinate,
      base,
      visibility,
      const DeepCollectionEquality().hash(_skyWeather),
      airTemperature,
      wind,
      sys);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherDataImplCopyWith<_$WeatherDataImpl> get copyWith =>
      __$$WeatherDataImplCopyWithImpl<_$WeatherDataImpl>(this, _$identity);
}

abstract class _WeatherData extends WeatherData {
  const factory _WeatherData(
      {required final int id,
      required final String locationName,
      required final CoordinateData coordinate,
      required final String base,
      required final int visibility,
      required final List<SkyWeatherData> skyWeather,
      required final AirTemperatureData airTemperature,
      required final WindData wind,
      required final SysData sys}) = _$WeatherDataImpl;
  const _WeatherData._() : super._();

  @override
  int get id;
  @override
  String get locationName;
  @override
  CoordinateData get coordinate;
  @override
  String get base;
  @override
  int get visibility;
  @override
  List<SkyWeatherData> get skyWeather;
  @override
  AirTemperatureData get airTemperature;
  @override
  WindData get wind;
  @override
  SysData get sys;
  @override
  @JsonKey(ignore: true)
  _$$WeatherDataImplCopyWith<_$WeatherDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
