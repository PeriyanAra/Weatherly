// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sys_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SysDto _$SysDtoFromJson(Map<String, dynamic> json) {
  return _SysDto.fromJson(json);
}

/// @nodoc
mixin _$SysDto {
  int? get type => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  int? get sunrise => throw _privateConstructorUsedError;
  int? get sunset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SysDtoCopyWith<SysDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SysDtoCopyWith<$Res> {
  factory $SysDtoCopyWith(SysDto value, $Res Function(SysDto) then) =
      _$SysDtoCopyWithImpl<$Res, SysDto>;
  @useResult
  $Res call({int? type, int? id, String? country, int? sunrise, int? sunset});
}

/// @nodoc
class _$SysDtoCopyWithImpl<$Res, $Val extends SysDto>
    implements $SysDtoCopyWith<$Res> {
  _$SysDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
    Object? country = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SysDtoImplCopyWith<$Res> implements $SysDtoCopyWith<$Res> {
  factory _$$SysDtoImplCopyWith(
          _$SysDtoImpl value, $Res Function(_$SysDtoImpl) then) =
      __$$SysDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? type, int? id, String? country, int? sunrise, int? sunset});
}

/// @nodoc
class __$$SysDtoImplCopyWithImpl<$Res>
    extends _$SysDtoCopyWithImpl<$Res, _$SysDtoImpl>
    implements _$$SysDtoImplCopyWith<$Res> {
  __$$SysDtoImplCopyWithImpl(
      _$SysDtoImpl _value, $Res Function(_$SysDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
    Object? country = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
  }) {
    return _then(_$SysDtoImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SysDtoImpl implements _SysDto {
  const _$SysDtoImpl(
      {required this.type,
      required this.id,
      required this.country,
      required this.sunrise,
      required this.sunset});

  factory _$SysDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SysDtoImplFromJson(json);

  @override
  final int? type;
  @override
  final int? id;
  @override
  final String? country;
  @override
  final int? sunrise;
  @override
  final int? sunset;

  @override
  String toString() {
    return 'SysDto(type: $type, id: $id, country: $country, sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SysDtoImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, id, country, sunrise, sunset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SysDtoImplCopyWith<_$SysDtoImpl> get copyWith =>
      __$$SysDtoImplCopyWithImpl<_$SysDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SysDtoImplToJson(
      this,
    );
  }
}

abstract class _SysDto implements SysDto {
  const factory _SysDto(
      {required final int? type,
      required final int? id,
      required final String? country,
      required final int? sunrise,
      required final int? sunset}) = _$SysDtoImpl;

  factory _SysDto.fromJson(Map<String, dynamic> json) = _$SysDtoImpl.fromJson;

  @override
  int? get type;
  @override
  int? get id;
  @override
  String? get country;
  @override
  int? get sunrise;
  @override
  int? get sunset;
  @override
  @JsonKey(ignore: true)
  _$$SysDtoImplCopyWith<_$SysDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
