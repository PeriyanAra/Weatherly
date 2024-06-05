// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_details_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherDetailsViewModel {
  String get city => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get currentTemp => throw _privateConstructorUsedError;
  String get highestTemp => throw _privateConstructorUsedError;
  String get lowestTemp => throw _privateConstructorUsedError;
  bool get isCurrentLocation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherDetailsViewModelCopyWith<WeatherDetailsViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDetailsViewModelCopyWith<$Res> {
  factory $WeatherDetailsViewModelCopyWith(WeatherDetailsViewModel value,
          $Res Function(WeatherDetailsViewModel) then) =
      _$WeatherDetailsViewModelCopyWithImpl<$Res, WeatherDetailsViewModel>;
  @useResult
  $Res call(
      {String city,
      String icon,
      String currentTemp,
      String highestTemp,
      String lowestTemp,
      bool isCurrentLocation});
}

/// @nodoc
class _$WeatherDetailsViewModelCopyWithImpl<$Res,
        $Val extends WeatherDetailsViewModel>
    implements $WeatherDetailsViewModelCopyWith<$Res> {
  _$WeatherDetailsViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? icon = null,
    Object? currentTemp = null,
    Object? highestTemp = null,
    Object? lowestTemp = null,
    Object? isCurrentLocation = null,
  }) {
    return _then(_value.copyWith(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      currentTemp: null == currentTemp
          ? _value.currentTemp
          : currentTemp // ignore: cast_nullable_to_non_nullable
              as String,
      highestTemp: null == highestTemp
          ? _value.highestTemp
          : highestTemp // ignore: cast_nullable_to_non_nullable
              as String,
      lowestTemp: null == lowestTemp
          ? _value.lowestTemp
          : lowestTemp // ignore: cast_nullable_to_non_nullable
              as String,
      isCurrentLocation: null == isCurrentLocation
          ? _value.isCurrentLocation
          : isCurrentLocation // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherDetailsViewModelImplCopyWith<$Res>
    implements $WeatherDetailsViewModelCopyWith<$Res> {
  factory _$$WeatherDetailsViewModelImplCopyWith(
          _$WeatherDetailsViewModelImpl value,
          $Res Function(_$WeatherDetailsViewModelImpl) then) =
      __$$WeatherDetailsViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String city,
      String icon,
      String currentTemp,
      String highestTemp,
      String lowestTemp,
      bool isCurrentLocation});
}

/// @nodoc
class __$$WeatherDetailsViewModelImplCopyWithImpl<$Res>
    extends _$WeatherDetailsViewModelCopyWithImpl<$Res,
        _$WeatherDetailsViewModelImpl>
    implements _$$WeatherDetailsViewModelImplCopyWith<$Res> {
  __$$WeatherDetailsViewModelImplCopyWithImpl(
      _$WeatherDetailsViewModelImpl _value,
      $Res Function(_$WeatherDetailsViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? icon = null,
    Object? currentTemp = null,
    Object? highestTemp = null,
    Object? lowestTemp = null,
    Object? isCurrentLocation = null,
  }) {
    return _then(_$WeatherDetailsViewModelImpl(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      currentTemp: null == currentTemp
          ? _value.currentTemp
          : currentTemp // ignore: cast_nullable_to_non_nullable
              as String,
      highestTemp: null == highestTemp
          ? _value.highestTemp
          : highestTemp // ignore: cast_nullable_to_non_nullable
              as String,
      lowestTemp: null == lowestTemp
          ? _value.lowestTemp
          : lowestTemp // ignore: cast_nullable_to_non_nullable
              as String,
      isCurrentLocation: null == isCurrentLocation
          ? _value.isCurrentLocation
          : isCurrentLocation // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$WeatherDetailsViewModelImpl extends _WeatherDetailsViewModel {
  const _$WeatherDetailsViewModelImpl(
      {required this.city,
      required this.icon,
      required this.currentTemp,
      required this.highestTemp,
      required this.lowestTemp,
      this.isCurrentLocation = false})
      : super._();

  @override
  final String city;
  @override
  final String icon;
  @override
  final String currentTemp;
  @override
  final String highestTemp;
  @override
  final String lowestTemp;
  @override
  @JsonKey()
  final bool isCurrentLocation;

  @override
  String toString() {
    return 'WeatherDetailsViewModel(city: $city, icon: $icon, currentTemp: $currentTemp, highestTemp: $highestTemp, lowestTemp: $lowestTemp, isCurrentLocation: $isCurrentLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherDetailsViewModelImpl &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.currentTemp, currentTemp) ||
                other.currentTemp == currentTemp) &&
            (identical(other.highestTemp, highestTemp) ||
                other.highestTemp == highestTemp) &&
            (identical(other.lowestTemp, lowestTemp) ||
                other.lowestTemp == lowestTemp) &&
            (identical(other.isCurrentLocation, isCurrentLocation) ||
                other.isCurrentLocation == isCurrentLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, city, icon, currentTemp,
      highestTemp, lowestTemp, isCurrentLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherDetailsViewModelImplCopyWith<_$WeatherDetailsViewModelImpl>
      get copyWith => __$$WeatherDetailsViewModelImplCopyWithImpl<
          _$WeatherDetailsViewModelImpl>(this, _$identity);
}

abstract class _WeatherDetailsViewModel extends WeatherDetailsViewModel {
  const factory _WeatherDetailsViewModel(
      {required final String city,
      required final String icon,
      required final String currentTemp,
      required final String highestTemp,
      required final String lowestTemp,
      final bool isCurrentLocation}) = _$WeatherDetailsViewModelImpl;
  const _WeatherDetailsViewModel._() : super._();

  @override
  String get city;
  @override
  String get icon;
  @override
  String get currentTemp;
  @override
  String get highestTemp;
  @override
  String get lowestTemp;
  @override
  bool get isCurrentLocation;
  @override
  @JsonKey(ignore: true)
  _$$WeatherDetailsViewModelImplCopyWith<_$WeatherDetailsViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
