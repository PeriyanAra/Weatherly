// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warnings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WarningsDto _$WarningsDtoFromJson(Map<String, dynamic> json) {
  return _WarningsDto.fromJson(json);
}

/// @nodoc
mixin _$WarningsDto {
  int? get code => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WarningsDtoCopyWith<WarningsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarningsDtoCopyWith<$Res> {
  factory $WarningsDtoCopyWith(
          WarningsDto value, $Res Function(WarningsDto) then) =
      _$WarningsDtoCopyWithImpl<$Res, WarningsDto>;
  @useResult
  $Res call({int? code, int? status, String? title, String? detail});
}

/// @nodoc
class _$WarningsDtoCopyWithImpl<$Res, $Val extends WarningsDto>
    implements $WarningsDtoCopyWith<$Res> {
  _$WarningsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? title = freezed,
    Object? detail = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WarningsDtoImplCopyWith<$Res>
    implements $WarningsDtoCopyWith<$Res> {
  factory _$$WarningsDtoImplCopyWith(
          _$WarningsDtoImpl value, $Res Function(_$WarningsDtoImpl) then) =
      __$$WarningsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, int? status, String? title, String? detail});
}

/// @nodoc
class __$$WarningsDtoImplCopyWithImpl<$Res>
    extends _$WarningsDtoCopyWithImpl<$Res, _$WarningsDtoImpl>
    implements _$$WarningsDtoImplCopyWith<$Res> {
  __$$WarningsDtoImplCopyWithImpl(
      _$WarningsDtoImpl _value, $Res Function(_$WarningsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? title = freezed,
    Object? detail = freezed,
  }) {
    return _then(_$WarningsDtoImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WarningsDtoImpl implements _WarningsDto {
  const _$WarningsDtoImpl(
      {required this.code,
      required this.status,
      required this.title,
      required this.detail});

  factory _$WarningsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarningsDtoImplFromJson(json);

  @override
  final int? code;
  @override
  final int? status;
  @override
  final String? title;
  @override
  final String? detail;

  @override
  String toString() {
    return 'WarningsDto(code: $code, status: $status, title: $title, detail: $detail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarningsDtoImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, title, detail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WarningsDtoImplCopyWith<_$WarningsDtoImpl> get copyWith =>
      __$$WarningsDtoImplCopyWithImpl<_$WarningsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarningsDtoImplToJson(
      this,
    );
  }
}

abstract class _WarningsDto implements WarningsDto {
  const factory _WarningsDto(
      {required final int? code,
      required final int? status,
      required final String? title,
      required final String? detail}) = _$WarningsDtoImpl;

  factory _WarningsDto.fromJson(Map<String, dynamic> json) =
      _$WarningsDtoImpl.fromJson;

  @override
  int? get code;
  @override
  int? get status;
  @override
  String? get title;
  @override
  String? get detail;
  @override
  @JsonKey(ignore: true)
  _$$WarningsDtoImplCopyWith<_$WarningsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
