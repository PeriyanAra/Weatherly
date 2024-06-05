// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'links_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LinksDto _$LinksDtoFromJson(Map<String, dynamic> json) {
  return _LinksDto.fromJson(json);
}

/// @nodoc
mixin _$LinksDto {
  String? get self => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinksDtoCopyWith<LinksDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksDtoCopyWith<$Res> {
  factory $LinksDtoCopyWith(LinksDto value, $Res Function(LinksDto) then) =
      _$LinksDtoCopyWithImpl<$Res, LinksDto>;
  @useResult
  $Res call({String? self});
}

/// @nodoc
class _$LinksDtoCopyWithImpl<$Res, $Val extends LinksDto>
    implements $LinksDtoCopyWith<$Res> {
  _$LinksDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = freezed,
  }) {
    return _then(_value.copyWith(
      self: freezed == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinksDtoImplCopyWith<$Res>
    implements $LinksDtoCopyWith<$Res> {
  factory _$$LinksDtoImplCopyWith(
          _$LinksDtoImpl value, $Res Function(_$LinksDtoImpl) then) =
      __$$LinksDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? self});
}

/// @nodoc
class __$$LinksDtoImplCopyWithImpl<$Res>
    extends _$LinksDtoCopyWithImpl<$Res, _$LinksDtoImpl>
    implements _$$LinksDtoImplCopyWith<$Res> {
  __$$LinksDtoImplCopyWithImpl(
      _$LinksDtoImpl _value, $Res Function(_$LinksDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = freezed,
  }) {
    return _then(_$LinksDtoImpl(
      self: freezed == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinksDtoImpl implements _LinksDto {
  const _$LinksDtoImpl({required this.self});

  factory _$LinksDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinksDtoImplFromJson(json);

  @override
  final String? self;

  @override
  String toString() {
    return 'LinksDto(self: $self)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinksDtoImpl &&
            (identical(other.self, self) || other.self == self));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, self);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinksDtoImplCopyWith<_$LinksDtoImpl> get copyWith =>
      __$$LinksDtoImplCopyWithImpl<_$LinksDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinksDtoImplToJson(
      this,
    );
  }
}

abstract class _LinksDto implements LinksDto {
  const factory _LinksDto({required final String? self}) = _$LinksDtoImpl;

  factory _LinksDto.fromJson(Map<String, dynamic> json) =
      _$LinksDtoImpl.fromJson;

  @override
  String? get self;
  @override
  @JsonKey(ignore: true)
  _$$LinksDtoImplCopyWith<_$LinksDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
