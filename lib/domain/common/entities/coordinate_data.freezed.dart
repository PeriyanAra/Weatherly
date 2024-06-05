// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coordinate_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoordinateData {
  double get longitude => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoordinateDataCopyWith<CoordinateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinateDataCopyWith<$Res> {
  factory $CoordinateDataCopyWith(
          CoordinateData value, $Res Function(CoordinateData) then) =
      _$CoordinateDataCopyWithImpl<$Res, CoordinateData>;
  @useResult
  $Res call({double longitude, double latitude});
}

/// @nodoc
class _$CoordinateDataCopyWithImpl<$Res, $Val extends CoordinateData>
    implements $CoordinateDataCopyWith<$Res> {
  _$CoordinateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longitude = null,
    Object? latitude = null,
  }) {
    return _then(_value.copyWith(
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoordinateDataImplCopyWith<$Res>
    implements $CoordinateDataCopyWith<$Res> {
  factory _$$CoordinateDataImplCopyWith(_$CoordinateDataImpl value,
          $Res Function(_$CoordinateDataImpl) then) =
      __$$CoordinateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double longitude, double latitude});
}

/// @nodoc
class __$$CoordinateDataImplCopyWithImpl<$Res>
    extends _$CoordinateDataCopyWithImpl<$Res, _$CoordinateDataImpl>
    implements _$$CoordinateDataImplCopyWith<$Res> {
  __$$CoordinateDataImplCopyWithImpl(
      _$CoordinateDataImpl _value, $Res Function(_$CoordinateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longitude = null,
    Object? latitude = null,
  }) {
    return _then(_$CoordinateDataImpl(
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CoordinateDataImpl extends _CoordinateData {
  const _$CoordinateDataImpl({required this.longitude, required this.latitude})
      : super._();

  @override
  final double longitude;
  @override
  final double latitude;

  @override
  String toString() {
    return 'CoordinateData(longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoordinateDataImpl &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, longitude, latitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoordinateDataImplCopyWith<_$CoordinateDataImpl> get copyWith =>
      __$$CoordinateDataImplCopyWithImpl<_$CoordinateDataImpl>(
          this, _$identity);
}

abstract class _CoordinateData extends CoordinateData {
  const factory _CoordinateData(
      {required final double longitude,
      required final double latitude}) = _$CoordinateDataImpl;
  const _CoordinateData._() : super._();

  @override
  double get longitude;
  @override
  double get latitude;
  @override
  @JsonKey(ignore: true)
  _$$CoordinateDataImplCopyWith<_$CoordinateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
