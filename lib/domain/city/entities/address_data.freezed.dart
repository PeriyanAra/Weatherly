// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddressData {
  String get countryCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressDataCopyWith<AddressData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDataCopyWith<$Res> {
  factory $AddressDataCopyWith(
          AddressData value, $Res Function(AddressData) then) =
      _$AddressDataCopyWithImpl<$Res, AddressData>;
  @useResult
  $Res call({String countryCode});
}

/// @nodoc
class _$AddressDataCopyWithImpl<$Res, $Val extends AddressData>
    implements $AddressDataCopyWith<$Res> {
  _$AddressDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
  }) {
    return _then(_value.copyWith(
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressDataImplCopyWith<$Res>
    implements $AddressDataCopyWith<$Res> {
  factory _$$AddressDataImplCopyWith(
          _$AddressDataImpl value, $Res Function(_$AddressDataImpl) then) =
      __$$AddressDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String countryCode});
}

/// @nodoc
class __$$AddressDataImplCopyWithImpl<$Res>
    extends _$AddressDataCopyWithImpl<$Res, _$AddressDataImpl>
    implements _$$AddressDataImplCopyWith<$Res> {
  __$$AddressDataImplCopyWithImpl(
      _$AddressDataImpl _value, $Res Function(_$AddressDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
  }) {
    return _then(_$AddressDataImpl(
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddressDataImpl extends _AddressData {
  const _$AddressDataImpl({required this.countryCode}) : super._();

  @override
  final String countryCode;

  @override
  String toString() {
    return 'AddressData(countryCode: $countryCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressDataImpl &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countryCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressDataImplCopyWith<_$AddressDataImpl> get copyWith =>
      __$$AddressDataImplCopyWithImpl<_$AddressDataImpl>(this, _$identity);
}

abstract class _AddressData extends AddressData {
  const factory _AddressData({required final String countryCode}) =
      _$AddressDataImpl;
  const _AddressData._() : super._();

  @override
  String get countryCode;
  @override
  @JsonKey(ignore: true)
  _$$AddressDataImplCopyWith<_$AddressDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
