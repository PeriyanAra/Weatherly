// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MetaDto _$MetaDtoFromJson(Map<String, dynamic> json) {
  return _MetaDto.fromJson(json);
}

/// @nodoc
mixin _$MetaDto {
  int? get count => throw _privateConstructorUsedError;
  LinksDto? get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaDtoCopyWith<MetaDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDtoCopyWith<$Res> {
  factory $MetaDtoCopyWith(MetaDto value, $Res Function(MetaDto) then) =
      _$MetaDtoCopyWithImpl<$Res, MetaDto>;
  @useResult
  $Res call({int? count, LinksDto? links});

  $LinksDtoCopyWith<$Res>? get links;
}

/// @nodoc
class _$MetaDtoCopyWithImpl<$Res, $Val extends MetaDto>
    implements $MetaDtoCopyWith<$Res> {
  _$MetaDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? links = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as LinksDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LinksDtoCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $LinksDtoCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MetaDtoImplCopyWith<$Res> implements $MetaDtoCopyWith<$Res> {
  factory _$$MetaDtoImplCopyWith(
          _$MetaDtoImpl value, $Res Function(_$MetaDtoImpl) then) =
      __$$MetaDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, LinksDto? links});

  @override
  $LinksDtoCopyWith<$Res>? get links;
}

/// @nodoc
class __$$MetaDtoImplCopyWithImpl<$Res>
    extends _$MetaDtoCopyWithImpl<$Res, _$MetaDtoImpl>
    implements _$$MetaDtoImplCopyWith<$Res> {
  __$$MetaDtoImplCopyWithImpl(
      _$MetaDtoImpl _value, $Res Function(_$MetaDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? links = freezed,
  }) {
    return _then(_$MetaDtoImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as LinksDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaDtoImpl implements _MetaDto {
  const _$MetaDtoImpl({required this.count, required this.links});

  factory _$MetaDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaDtoImplFromJson(json);

  @override
  final int? count;
  @override
  final LinksDto? links;

  @override
  String toString() {
    return 'MetaDto(count: $count, links: $links)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaDtoImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.links, links) || other.links == links));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, links);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaDtoImplCopyWith<_$MetaDtoImpl> get copyWith =>
      __$$MetaDtoImplCopyWithImpl<_$MetaDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaDtoImplToJson(
      this,
    );
  }
}

abstract class _MetaDto implements MetaDto {
  const factory _MetaDto(
      {required final int? count,
      required final LinksDto? links}) = _$MetaDtoImpl;

  factory _MetaDto.fromJson(Map<String, dynamic> json) = _$MetaDtoImpl.fromJson;

  @override
  int? get count;
  @override
  LinksDto? get links;
  @override
  @JsonKey(ignore: true)
  _$$MetaDtoImplCopyWith<_$MetaDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
