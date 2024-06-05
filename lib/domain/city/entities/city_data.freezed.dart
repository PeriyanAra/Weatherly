// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CityData {
  String get type => throw _privateConstructorUsedError;
  String get subType => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  AddressData get address => throw _privateConstructorUsedError;
  CoordinateData get coordinate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CityDataCopyWith<CityData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityDataCopyWith<$Res> {
  factory $CityDataCopyWith(CityData value, $Res Function(CityData) then) =
      _$CityDataCopyWithImpl<$Res, CityData>;
  @useResult
  $Res call(
      {String type,
      String subType,
      String name,
      AddressData address,
      CoordinateData coordinate});

  $AddressDataCopyWith<$Res> get address;
  $CoordinateDataCopyWith<$Res> get coordinate;
}

/// @nodoc
class _$CityDataCopyWithImpl<$Res, $Val extends CityData>
    implements $CityDataCopyWith<$Res> {
  _$CityDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? subType = null,
    Object? name = null,
    Object? address = null,
    Object? coordinate = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      subType: null == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressData,
      coordinate: null == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as CoordinateData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressDataCopyWith<$Res> get address {
    return $AddressDataCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordinateDataCopyWith<$Res> get coordinate {
    return $CoordinateDataCopyWith<$Res>(_value.coordinate, (value) {
      return _then(_value.copyWith(coordinate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CityDataImplCopyWith<$Res>
    implements $CityDataCopyWith<$Res> {
  factory _$$CityDataImplCopyWith(
          _$CityDataImpl value, $Res Function(_$CityDataImpl) then) =
      __$$CityDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String subType,
      String name,
      AddressData address,
      CoordinateData coordinate});

  @override
  $AddressDataCopyWith<$Res> get address;
  @override
  $CoordinateDataCopyWith<$Res> get coordinate;
}

/// @nodoc
class __$$CityDataImplCopyWithImpl<$Res>
    extends _$CityDataCopyWithImpl<$Res, _$CityDataImpl>
    implements _$$CityDataImplCopyWith<$Res> {
  __$$CityDataImplCopyWithImpl(
      _$CityDataImpl _value, $Res Function(_$CityDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? subType = null,
    Object? name = null,
    Object? address = null,
    Object? coordinate = null,
  }) {
    return _then(_$CityDataImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      subType: null == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressData,
      coordinate: null == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as CoordinateData,
    ));
  }
}

/// @nodoc

class _$CityDataImpl extends _CityData {
  const _$CityDataImpl(
      {required this.type,
      required this.subType,
      required this.name,
      required this.address,
      required this.coordinate})
      : super._();

  @override
  final String type;
  @override
  final String subType;
  @override
  final String name;
  @override
  final AddressData address;
  @override
  final CoordinateData coordinate;

  @override
  String toString() {
    return 'CityData(type: $type, subType: $subType, name: $name, address: $address, coordinate: $coordinate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityDataImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.subType, subType) || other.subType == subType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.coordinate, coordinate) ||
                other.coordinate == coordinate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, type, subType, name, address, coordinate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityDataImplCopyWith<_$CityDataImpl> get copyWith =>
      __$$CityDataImplCopyWithImpl<_$CityDataImpl>(this, _$identity);
}

abstract class _CityData extends CityData {
  const factory _CityData(
      {required final String type,
      required final String subType,
      required final String name,
      required final AddressData address,
      required final CoordinateData coordinate}) = _$CityDataImpl;
  const _CityData._() : super._();

  @override
  String get type;
  @override
  String get subType;
  @override
  String get name;
  @override
  AddressData get address;
  @override
  CoordinateData get coordinate;
  @override
  @JsonKey(ignore: true)
  _$$CityDataImplCopyWith<_$CityDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
