// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CityDto _$CityDtoFromJson(Map<String, dynamic> json) {
  return _CityDto.fromJson(json);
}

/// @nodoc
mixin _$CityDto {
  String? get name => throw _privateConstructorUsedError;
  GeoCodeDto? get geoCode => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get subType => throw _privateConstructorUsedError;
  AddressDto? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityDtoCopyWith<CityDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityDtoCopyWith<$Res> {
  factory $CityDtoCopyWith(CityDto value, $Res Function(CityDto) then) =
      _$CityDtoCopyWithImpl<$Res, CityDto>;
  @useResult
  $Res call(
      {String? name,
      GeoCodeDto? geoCode,
      String? type,
      String? subType,
      AddressDto? address});

  $GeoCodeDtoCopyWith<$Res>? get geoCode;
  $AddressDtoCopyWith<$Res>? get address;
}

/// @nodoc
class _$CityDtoCopyWithImpl<$Res, $Val extends CityDto>
    implements $CityDtoCopyWith<$Res> {
  _$CityDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? geoCode = freezed,
    Object? type = freezed,
    Object? subType = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      geoCode: freezed == geoCode
          ? _value.geoCode
          : geoCode // ignore: cast_nullable_to_non_nullable
              as GeoCodeDto?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      subType: freezed == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoCodeDtoCopyWith<$Res>? get geoCode {
    if (_value.geoCode == null) {
      return null;
    }

    return $GeoCodeDtoCopyWith<$Res>(_value.geoCode!, (value) {
      return _then(_value.copyWith(geoCode: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressDtoCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressDtoCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CityDtoImplCopyWith<$Res> implements $CityDtoCopyWith<$Res> {
  factory _$$CityDtoImplCopyWith(
          _$CityDtoImpl value, $Res Function(_$CityDtoImpl) then) =
      __$$CityDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      GeoCodeDto? geoCode,
      String? type,
      String? subType,
      AddressDto? address});

  @override
  $GeoCodeDtoCopyWith<$Res>? get geoCode;
  @override
  $AddressDtoCopyWith<$Res>? get address;
}

/// @nodoc
class __$$CityDtoImplCopyWithImpl<$Res>
    extends _$CityDtoCopyWithImpl<$Res, _$CityDtoImpl>
    implements _$$CityDtoImplCopyWith<$Res> {
  __$$CityDtoImplCopyWithImpl(
      _$CityDtoImpl _value, $Res Function(_$CityDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? geoCode = freezed,
    Object? type = freezed,
    Object? subType = freezed,
    Object? address = freezed,
  }) {
    return _then(_$CityDtoImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      geoCode: freezed == geoCode
          ? _value.geoCode
          : geoCode // ignore: cast_nullable_to_non_nullable
              as GeoCodeDto?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      subType: freezed == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityDtoImpl implements _CityDto {
  const _$CityDtoImpl(
      {required this.name,
      required this.geoCode,
      required this.type,
      required this.subType,
      required this.address});

  factory _$CityDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityDtoImplFromJson(json);

  @override
  final String? name;
  @override
  final GeoCodeDto? geoCode;
  @override
  final String? type;
  @override
  final String? subType;
  @override
  final AddressDto? address;

  @override
  String toString() {
    return 'CityDto(name: $name, geoCode: $geoCode, type: $type, subType: $subType, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.geoCode, geoCode) || other.geoCode == geoCode) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.subType, subType) || other.subType == subType) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, geoCode, type, subType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityDtoImplCopyWith<_$CityDtoImpl> get copyWith =>
      __$$CityDtoImplCopyWithImpl<_$CityDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityDtoImplToJson(
      this,
    );
  }
}

abstract class _CityDto implements CityDto {
  const factory _CityDto(
      {required final String? name,
      required final GeoCodeDto? geoCode,
      required final String? type,
      required final String? subType,
      required final AddressDto? address}) = _$CityDtoImpl;

  factory _CityDto.fromJson(Map<String, dynamic> json) = _$CityDtoImpl.fromJson;

  @override
  String? get name;
  @override
  GeoCodeDto? get geoCode;
  @override
  String? get type;
  @override
  String? get subType;
  @override
  AddressDto? get address;
  @override
  @JsonKey(ignore: true)
  _$$CityDtoImplCopyWith<_$CityDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
