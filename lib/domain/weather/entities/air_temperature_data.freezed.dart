// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'air_temperature_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AirTemperatureData {
  double get temperature => throw _privateConstructorUsedError;
  double get feelsLike => throw _privateConstructorUsedError;
  double get maxTemperature => throw _privateConstructorUsedError;
  double get minTemperature => throw _privateConstructorUsedError;
  int get pressure => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AirTemperatureDataCopyWith<AirTemperatureData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirTemperatureDataCopyWith<$Res> {
  factory $AirTemperatureDataCopyWith(
          AirTemperatureData value, $Res Function(AirTemperatureData) then) =
      _$AirTemperatureDataCopyWithImpl<$Res, AirTemperatureData>;
  @useResult
  $Res call(
      {double temperature,
      double feelsLike,
      double maxTemperature,
      double minTemperature,
      int pressure,
      int humidity});
}

/// @nodoc
class _$AirTemperatureDataCopyWithImpl<$Res, $Val extends AirTemperatureData>
    implements $AirTemperatureDataCopyWith<$Res> {
  _$AirTemperatureDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? feelsLike = null,
    Object? maxTemperature = null,
    Object? minTemperature = null,
    Object? pressure = null,
    Object? humidity = null,
  }) {
    return _then(_value.copyWith(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      maxTemperature: null == maxTemperature
          ? _value.maxTemperature
          : maxTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      minTemperature: null == minTemperature
          ? _value.minTemperature
          : minTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AirTemperatureDataImplCopyWith<$Res>
    implements $AirTemperatureDataCopyWith<$Res> {
  factory _$$AirTemperatureDataImplCopyWith(_$AirTemperatureDataImpl value,
          $Res Function(_$AirTemperatureDataImpl) then) =
      __$$AirTemperatureDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double temperature,
      double feelsLike,
      double maxTemperature,
      double minTemperature,
      int pressure,
      int humidity});
}

/// @nodoc
class __$$AirTemperatureDataImplCopyWithImpl<$Res>
    extends _$AirTemperatureDataCopyWithImpl<$Res, _$AirTemperatureDataImpl>
    implements _$$AirTemperatureDataImplCopyWith<$Res> {
  __$$AirTemperatureDataImplCopyWithImpl(_$AirTemperatureDataImpl _value,
      $Res Function(_$AirTemperatureDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? feelsLike = null,
    Object? maxTemperature = null,
    Object? minTemperature = null,
    Object? pressure = null,
    Object? humidity = null,
  }) {
    return _then(_$AirTemperatureDataImpl(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      maxTemperature: null == maxTemperature
          ? _value.maxTemperature
          : maxTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      minTemperature: null == minTemperature
          ? _value.minTemperature
          : minTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AirTemperatureDataImpl extends _AirTemperatureData {
  const _$AirTemperatureDataImpl(
      {required this.temperature,
      required this.feelsLike,
      required this.maxTemperature,
      required this.minTemperature,
      required this.pressure,
      required this.humidity})
      : super._();

  @override
  final double temperature;
  @override
  final double feelsLike;
  @override
  final double maxTemperature;
  @override
  final double minTemperature;
  @override
  final int pressure;
  @override
  final int humidity;

  @override
  String toString() {
    return 'AirTemperatureData(temperature: $temperature, feelsLike: $feelsLike, maxTemperature: $maxTemperature, minTemperature: $minTemperature, pressure: $pressure, humidity: $humidity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AirTemperatureDataImpl &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.maxTemperature, maxTemperature) ||
                other.maxTemperature == maxTemperature) &&
            (identical(other.minTemperature, minTemperature) ||
                other.minTemperature == minTemperature) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, temperature, feelsLike,
      maxTemperature, minTemperature, pressure, humidity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AirTemperatureDataImplCopyWith<_$AirTemperatureDataImpl> get copyWith =>
      __$$AirTemperatureDataImplCopyWithImpl<_$AirTemperatureDataImpl>(
          this, _$identity);
}

abstract class _AirTemperatureData extends AirTemperatureData {
  const factory _AirTemperatureData(
      {required final double temperature,
      required final double feelsLike,
      required final double maxTemperature,
      required final double minTemperature,
      required final int pressure,
      required final int humidity}) = _$AirTemperatureDataImpl;
  const _AirTemperatureData._() : super._();

  @override
  double get temperature;
  @override
  double get feelsLike;
  @override
  double get maxTemperature;
  @override
  double get minTemperature;
  @override
  int get pressure;
  @override
  int get humidity;
  @override
  @JsonKey(ignore: true)
  _$$AirTemperatureDataImplCopyWith<_$AirTemperatureDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
