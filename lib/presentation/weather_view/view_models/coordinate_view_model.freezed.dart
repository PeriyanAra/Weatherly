// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coordinate_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoordinateViewModel {
  double get longitude => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoordinateViewModelCopyWith<CoordinateViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinateViewModelCopyWith<$Res> {
  factory $CoordinateViewModelCopyWith(
          CoordinateViewModel value, $Res Function(CoordinateViewModel) then) =
      _$CoordinateViewModelCopyWithImpl<$Res, CoordinateViewModel>;
  @useResult
  $Res call({double longitude, double latitude});
}

/// @nodoc
class _$CoordinateViewModelCopyWithImpl<$Res, $Val extends CoordinateViewModel>
    implements $CoordinateViewModelCopyWith<$Res> {
  _$CoordinateViewModelCopyWithImpl(this._value, this._then);

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
abstract class _$$CoordinateViewModelImplCopyWith<$Res>
    implements $CoordinateViewModelCopyWith<$Res> {
  factory _$$CoordinateViewModelImplCopyWith(_$CoordinateViewModelImpl value,
          $Res Function(_$CoordinateViewModelImpl) then) =
      __$$CoordinateViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double longitude, double latitude});
}

/// @nodoc
class __$$CoordinateViewModelImplCopyWithImpl<$Res>
    extends _$CoordinateViewModelCopyWithImpl<$Res, _$CoordinateViewModelImpl>
    implements _$$CoordinateViewModelImplCopyWith<$Res> {
  __$$CoordinateViewModelImplCopyWithImpl(_$CoordinateViewModelImpl _value,
      $Res Function(_$CoordinateViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longitude = null,
    Object? latitude = null,
  }) {
    return _then(_$CoordinateViewModelImpl(
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

class _$CoordinateViewModelImpl extends _CoordinateViewModel {
  const _$CoordinateViewModelImpl(
      {required this.longitude, required this.latitude})
      : super._();

  @override
  final double longitude;
  @override
  final double latitude;

  @override
  String toString() {
    return 'CoordinateViewModel(longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoordinateViewModelImpl &&
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
  _$$CoordinateViewModelImplCopyWith<_$CoordinateViewModelImpl> get copyWith =>
      __$$CoordinateViewModelImplCopyWithImpl<_$CoordinateViewModelImpl>(
          this, _$identity);
}

abstract class _CoordinateViewModel extends CoordinateViewModel {
  const factory _CoordinateViewModel(
      {required final double longitude,
      required final double latitude}) = _$CoordinateViewModelImpl;
  const _CoordinateViewModel._() : super._();

  @override
  double get longitude;
  @override
  double get latitude;
  @override
  @JsonKey(ignore: true)
  _$$CoordinateViewModelImplCopyWith<_$CoordinateViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
