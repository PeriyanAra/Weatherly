// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sys_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SysData {
  int get type => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  int get sunrise => throw _privateConstructorUsedError;
  int get sunset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SysDataCopyWith<SysData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SysDataCopyWith<$Res> {
  factory $SysDataCopyWith(SysData value, $Res Function(SysData) then) =
      _$SysDataCopyWithImpl<$Res, SysData>;
  @useResult
  $Res call({int type, int id, String country, int sunrise, int sunset});
}

/// @nodoc
class _$SysDataCopyWithImpl<$Res, $Val extends SysData>
    implements $SysDataCopyWith<$Res> {
  _$SysDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? country = null,
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SysDataImplCopyWith<$Res> implements $SysDataCopyWith<$Res> {
  factory _$$SysDataImplCopyWith(
          _$SysDataImpl value, $Res Function(_$SysDataImpl) then) =
      __$$SysDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int type, int id, String country, int sunrise, int sunset});
}

/// @nodoc
class __$$SysDataImplCopyWithImpl<$Res>
    extends _$SysDataCopyWithImpl<$Res, _$SysDataImpl>
    implements _$$SysDataImplCopyWith<$Res> {
  __$$SysDataImplCopyWithImpl(
      _$SysDataImpl _value, $Res Function(_$SysDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? country = null,
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_$SysDataImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SysDataImpl extends _SysData {
  const _$SysDataImpl(
      {required this.type,
      required this.id,
      required this.country,
      required this.sunrise,
      required this.sunset})
      : super._();

  @override
  final int type;
  @override
  final int id;
  @override
  final String country;
  @override
  final int sunrise;
  @override
  final int sunset;

  @override
  String toString() {
    return 'SysData(type: $type, id: $id, country: $country, sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SysDataImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, type, id, country, sunrise, sunset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SysDataImplCopyWith<_$SysDataImpl> get copyWith =>
      __$$SysDataImplCopyWithImpl<_$SysDataImpl>(this, _$identity);
}

abstract class _SysData extends SysData {
  const factory _SysData(
      {required final int type,
      required final int id,
      required final String country,
      required final int sunrise,
      required final int sunset}) = _$SysDataImpl;
  const _SysData._() : super._();

  @override
  int get type;
  @override
  int get id;
  @override
  String get country;
  @override
  int get sunrise;
  @override
  int get sunset;
  @override
  @JsonKey(ignore: true)
  _$$SysDataImplCopyWith<_$SysDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
