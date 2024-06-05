// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sky_weather_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SkyWeatherData {
  int get id => throw _privateConstructorUsedError;
  String get main => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SkyWeatherDataCopyWith<SkyWeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkyWeatherDataCopyWith<$Res> {
  factory $SkyWeatherDataCopyWith(
          SkyWeatherData value, $Res Function(SkyWeatherData) then) =
      _$SkyWeatherDataCopyWithImpl<$Res, SkyWeatherData>;
  @useResult
  $Res call({int id, String main, String description, String icon});
}

/// @nodoc
class _$SkyWeatherDataCopyWithImpl<$Res, $Val extends SkyWeatherData>
    implements $SkyWeatherDataCopyWith<$Res> {
  _$SkyWeatherDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SkyWeatherDataImplCopyWith<$Res>
    implements $SkyWeatherDataCopyWith<$Res> {
  factory _$$SkyWeatherDataImplCopyWith(_$SkyWeatherDataImpl value,
          $Res Function(_$SkyWeatherDataImpl) then) =
      __$$SkyWeatherDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String main, String description, String icon});
}

/// @nodoc
class __$$SkyWeatherDataImplCopyWithImpl<$Res>
    extends _$SkyWeatherDataCopyWithImpl<$Res, _$SkyWeatherDataImpl>
    implements _$$SkyWeatherDataImplCopyWith<$Res> {
  __$$SkyWeatherDataImplCopyWithImpl(
      _$SkyWeatherDataImpl _value, $Res Function(_$SkyWeatherDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_$SkyWeatherDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SkyWeatherDataImpl extends _SkyWeatherData {
  const _$SkyWeatherDataImpl(
      {required this.id,
      required this.main,
      required this.description,
      required this.icon})
      : super._();

  @override
  final int id;
  @override
  final String main;
  @override
  final String description;
  @override
  final String icon;

  @override
  String toString() {
    return 'SkyWeatherData(id: $id, main: $main, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SkyWeatherDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, main, description, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SkyWeatherDataImplCopyWith<_$SkyWeatherDataImpl> get copyWith =>
      __$$SkyWeatherDataImplCopyWithImpl<_$SkyWeatherDataImpl>(
          this, _$identity);
}

abstract class _SkyWeatherData extends SkyWeatherData {
  const factory _SkyWeatherData(
      {required final int id,
      required final String main,
      required final String description,
      required final String icon}) = _$SkyWeatherDataImpl;
  const _SkyWeatherData._() : super._();

  @override
  int get id;
  @override
  String get main;
  @override
  String get description;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$SkyWeatherDataImplCopyWith<_$SkyWeatherDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
