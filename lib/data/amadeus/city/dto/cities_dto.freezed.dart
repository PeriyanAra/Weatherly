// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cities_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CitiesDto _$CitiesDtoFromJson(Map<String, dynamic> json) {
  return _CitiesDto.fromJson(json);
}

/// @nodoc
mixin _$CitiesDto {
  MetaDto? get meta => throw _privateConstructorUsedError;
  List<CityDto>? get data => throw _privateConstructorUsedError;
  List<WarningsDto>? get warnings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitiesDtoCopyWith<CitiesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesDtoCopyWith<$Res> {
  factory $CitiesDtoCopyWith(CitiesDto value, $Res Function(CitiesDto) then) =
      _$CitiesDtoCopyWithImpl<$Res, CitiesDto>;
  @useResult
  $Res call({MetaDto? meta, List<CityDto>? data, List<WarningsDto>? warnings});

  $MetaDtoCopyWith<$Res>? get meta;
}

/// @nodoc
class _$CitiesDtoCopyWithImpl<$Res, $Val extends CitiesDto>
    implements $CitiesDtoCopyWith<$Res> {
  _$CitiesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
    Object? warnings = freezed,
  }) {
    return _then(_value.copyWith(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDto?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CityDto>?,
      warnings: freezed == warnings
          ? _value.warnings
          : warnings // ignore: cast_nullable_to_non_nullable
              as List<WarningsDto>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaDtoCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaDtoCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CitiesDtoImplCopyWith<$Res>
    implements $CitiesDtoCopyWith<$Res> {
  factory _$$CitiesDtoImplCopyWith(
          _$CitiesDtoImpl value, $Res Function(_$CitiesDtoImpl) then) =
      __$$CitiesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MetaDto? meta, List<CityDto>? data, List<WarningsDto>? warnings});

  @override
  $MetaDtoCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$CitiesDtoImplCopyWithImpl<$Res>
    extends _$CitiesDtoCopyWithImpl<$Res, _$CitiesDtoImpl>
    implements _$$CitiesDtoImplCopyWith<$Res> {
  __$$CitiesDtoImplCopyWithImpl(
      _$CitiesDtoImpl _value, $Res Function(_$CitiesDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
    Object? warnings = freezed,
  }) {
    return _then(_$CitiesDtoImpl(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDto?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CityDto>?,
      warnings: freezed == warnings
          ? _value._warnings
          : warnings // ignore: cast_nullable_to_non_nullable
              as List<WarningsDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitiesDtoImpl implements _CitiesDto {
  const _$CitiesDtoImpl(
      {required this.meta,
      required final List<CityDto>? data,
      required final List<WarningsDto>? warnings})
      : _data = data,
        _warnings = warnings;

  factory _$CitiesDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CitiesDtoImplFromJson(json);

  @override
  final MetaDto? meta;
  final List<CityDto>? _data;
  @override
  List<CityDto>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<WarningsDto>? _warnings;
  @override
  List<WarningsDto>? get warnings {
    final value = _warnings;
    if (value == null) return null;
    if (_warnings is EqualUnmodifiableListView) return _warnings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CitiesDto(meta: $meta, data: $data, warnings: $warnings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitiesDtoImpl &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._warnings, _warnings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      meta,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_warnings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitiesDtoImplCopyWith<_$CitiesDtoImpl> get copyWith =>
      __$$CitiesDtoImplCopyWithImpl<_$CitiesDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitiesDtoImplToJson(
      this,
    );
  }
}

abstract class _CitiesDto implements CitiesDto {
  const factory _CitiesDto(
      {required final MetaDto? meta,
      required final List<CityDto>? data,
      required final List<WarningsDto>? warnings}) = _$CitiesDtoImpl;

  factory _CitiesDto.fromJson(Map<String, dynamic> json) =
      _$CitiesDtoImpl.fromJson;

  @override
  MetaDto? get meta;
  @override
  List<CityDto>? get data;
  @override
  List<WarningsDto>? get warnings;
  @override
  @JsonKey(ignore: true)
  _$$CitiesDtoImplCopyWith<_$CitiesDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
