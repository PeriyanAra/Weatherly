// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CityViewModel {
  String get city => throw _privateConstructorUsedError;
  CoordinateViewModel get coordinates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CityViewModelCopyWith<CityViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityViewModelCopyWith<$Res> {
  factory $CityViewModelCopyWith(
          CityViewModel value, $Res Function(CityViewModel) then) =
      _$CityViewModelCopyWithImpl<$Res, CityViewModel>;
  @useResult
  $Res call({String city, CoordinateViewModel coordinates});

  $CoordinateViewModelCopyWith<$Res> get coordinates;
}

/// @nodoc
class _$CityViewModelCopyWithImpl<$Res, $Val extends CityViewModel>
    implements $CityViewModelCopyWith<$Res> {
  _$CityViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? coordinates = null,
  }) {
    return _then(_value.copyWith(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as CoordinateViewModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordinateViewModelCopyWith<$Res> get coordinates {
    return $CoordinateViewModelCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CityViewModelImplCopyWith<$Res>
    implements $CityViewModelCopyWith<$Res> {
  factory _$$CityViewModelImplCopyWith(
          _$CityViewModelImpl value, $Res Function(_$CityViewModelImpl) then) =
      __$$CityViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String city, CoordinateViewModel coordinates});

  @override
  $CoordinateViewModelCopyWith<$Res> get coordinates;
}

/// @nodoc
class __$$CityViewModelImplCopyWithImpl<$Res>
    extends _$CityViewModelCopyWithImpl<$Res, _$CityViewModelImpl>
    implements _$$CityViewModelImplCopyWith<$Res> {
  __$$CityViewModelImplCopyWithImpl(
      _$CityViewModelImpl _value, $Res Function(_$CityViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? coordinates = null,
  }) {
    return _then(_$CityViewModelImpl(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as CoordinateViewModel,
    ));
  }
}

/// @nodoc

class _$CityViewModelImpl extends _CityViewModel {
  const _$CityViewModelImpl({required this.city, required this.coordinates})
      : super._();

  @override
  final String city;
  @override
  final CoordinateViewModel coordinates;

  @override
  String toString() {
    return 'CityViewModel(city: $city, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityViewModelImpl &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, city, coordinates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityViewModelImplCopyWith<_$CityViewModelImpl> get copyWith =>
      __$$CityViewModelImplCopyWithImpl<_$CityViewModelImpl>(this, _$identity);
}

abstract class _CityViewModel extends CityViewModel {
  const factory _CityViewModel(
      {required final String city,
      required final CoordinateViewModel coordinates}) = _$CityViewModelImpl;
  const _CityViewModel._() : super._();

  @override
  String get city;
  @override
  CoordinateViewModel get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$CityViewModelImplCopyWith<_$CityViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
