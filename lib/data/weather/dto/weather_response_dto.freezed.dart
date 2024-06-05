// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherResponseDto _$WeatherResponseDtoFromJson(Map<String, dynamic> json) {
  return _WeatherResponseDto.fromJson(json);
}

/// @nodoc
mixin _$WeatherResponseDto {
  CoordDto? get coord => throw _privateConstructorUsedError;
  List<WeatherDto>? get weather => throw _privateConstructorUsedError;
  String? get base => throw _privateConstructorUsedError;
  MainDto? get main => throw _privateConstructorUsedError;
  int? get visibility => throw _privateConstructorUsedError;
  WindDto? get wind => throw _privateConstructorUsedError;
  CloudsDto? get clouds => throw _privateConstructorUsedError;
  int? get dt => throw _privateConstructorUsedError;
  SysDto? get sys => throw _privateConstructorUsedError;
  int? get timezone => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get cod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherResponseDtoCopyWith<WeatherResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherResponseDtoCopyWith<$Res> {
  factory $WeatherResponseDtoCopyWith(
          WeatherResponseDto value, $Res Function(WeatherResponseDto) then) =
      _$WeatherResponseDtoCopyWithImpl<$Res, WeatherResponseDto>;
  @useResult
  $Res call(
      {CoordDto? coord,
      List<WeatherDto>? weather,
      String? base,
      MainDto? main,
      int? visibility,
      WindDto? wind,
      CloudsDto? clouds,
      int? dt,
      SysDto? sys,
      int? timezone,
      int? id,
      String? name,
      int? cod});

  $CoordDtoCopyWith<$Res>? get coord;
  $MainDtoCopyWith<$Res>? get main;
  $WindDtoCopyWith<$Res>? get wind;
  $CloudsDtoCopyWith<$Res>? get clouds;
  $SysDtoCopyWith<$Res>? get sys;
}

/// @nodoc
class _$WeatherResponseDtoCopyWithImpl<$Res, $Val extends WeatherResponseDto>
    implements $WeatherResponseDtoCopyWith<$Res> {
  _$WeatherResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coord = freezed,
    Object? weather = freezed,
    Object? base = freezed,
    Object? main = freezed,
    Object? visibility = freezed,
    Object? wind = freezed,
    Object? clouds = freezed,
    Object? dt = freezed,
    Object? sys = freezed,
    Object? timezone = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? cod = freezed,
  }) {
    return _then(_value.copyWith(
      coord: freezed == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as CoordDto?,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherDto>?,
      base: freezed == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainDto?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindDto?,
      clouds: freezed == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as CloudsDto?,
      dt: freezed == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      sys: freezed == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as SysDto?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cod: freezed == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordDtoCopyWith<$Res>? get coord {
    if (_value.coord == null) {
      return null;
    }

    return $CoordDtoCopyWith<$Res>(_value.coord!, (value) {
      return _then(_value.copyWith(coord: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MainDtoCopyWith<$Res>? get main {
    if (_value.main == null) {
      return null;
    }

    return $MainDtoCopyWith<$Res>(_value.main!, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WindDtoCopyWith<$Res>? get wind {
    if (_value.wind == null) {
      return null;
    }

    return $WindDtoCopyWith<$Res>(_value.wind!, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CloudsDtoCopyWith<$Res>? get clouds {
    if (_value.clouds == null) {
      return null;
    }

    return $CloudsDtoCopyWith<$Res>(_value.clouds!, (value) {
      return _then(_value.copyWith(clouds: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SysDtoCopyWith<$Res>? get sys {
    if (_value.sys == null) {
      return null;
    }

    return $SysDtoCopyWith<$Res>(_value.sys!, (value) {
      return _then(_value.copyWith(sys: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherResponseDtoImplCopyWith<$Res>
    implements $WeatherResponseDtoCopyWith<$Res> {
  factory _$$WeatherResponseDtoImplCopyWith(_$WeatherResponseDtoImpl value,
          $Res Function(_$WeatherResponseDtoImpl) then) =
      __$$WeatherResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CoordDto? coord,
      List<WeatherDto>? weather,
      String? base,
      MainDto? main,
      int? visibility,
      WindDto? wind,
      CloudsDto? clouds,
      int? dt,
      SysDto? sys,
      int? timezone,
      int? id,
      String? name,
      int? cod});

  @override
  $CoordDtoCopyWith<$Res>? get coord;
  @override
  $MainDtoCopyWith<$Res>? get main;
  @override
  $WindDtoCopyWith<$Res>? get wind;
  @override
  $CloudsDtoCopyWith<$Res>? get clouds;
  @override
  $SysDtoCopyWith<$Res>? get sys;
}

/// @nodoc
class __$$WeatherResponseDtoImplCopyWithImpl<$Res>
    extends _$WeatherResponseDtoCopyWithImpl<$Res, _$WeatherResponseDtoImpl>
    implements _$$WeatherResponseDtoImplCopyWith<$Res> {
  __$$WeatherResponseDtoImplCopyWithImpl(_$WeatherResponseDtoImpl _value,
      $Res Function(_$WeatherResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coord = freezed,
    Object? weather = freezed,
    Object? base = freezed,
    Object? main = freezed,
    Object? visibility = freezed,
    Object? wind = freezed,
    Object? clouds = freezed,
    Object? dt = freezed,
    Object? sys = freezed,
    Object? timezone = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? cod = freezed,
  }) {
    return _then(_$WeatherResponseDtoImpl(
      coord: freezed == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as CoordDto?,
      weather: freezed == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherDto>?,
      base: freezed == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainDto?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindDto?,
      clouds: freezed == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as CloudsDto?,
      dt: freezed == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      sys: freezed == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as SysDto?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cod: freezed == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherResponseDtoImpl implements _WeatherResponseDto {
  const _$WeatherResponseDtoImpl(
      {required this.coord,
      required final List<WeatherDto>? weather,
      required this.base,
      required this.main,
      required this.visibility,
      required this.wind,
      required this.clouds,
      required this.dt,
      required this.sys,
      required this.timezone,
      required this.id,
      required this.name,
      required this.cod})
      : _weather = weather;

  factory _$WeatherResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherResponseDtoImplFromJson(json);

  @override
  final CoordDto? coord;
  final List<WeatherDto>? _weather;
  @override
  List<WeatherDto>? get weather {
    final value = _weather;
    if (value == null) return null;
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? base;
  @override
  final MainDto? main;
  @override
  final int? visibility;
  @override
  final WindDto? wind;
  @override
  final CloudsDto? clouds;
  @override
  final int? dt;
  @override
  final SysDto? sys;
  @override
  final int? timezone;
  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? cod;

  @override
  String toString() {
    return 'WeatherResponseDto(coord: $coord, weather: $weather, base: $base, main: $main, visibility: $visibility, wind: $wind, clouds: $clouds, dt: $dt, sys: $sys, timezone: $timezone, id: $id, name: $name, cod: $cod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherResponseDtoImpl &&
            (identical(other.coord, coord) || other.coord == coord) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.sys, sys) || other.sys == sys) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cod, cod) || other.cod == cod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      coord,
      const DeepCollectionEquality().hash(_weather),
      base,
      main,
      visibility,
      wind,
      clouds,
      dt,
      sys,
      timezone,
      id,
      name,
      cod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherResponseDtoImplCopyWith<_$WeatherResponseDtoImpl> get copyWith =>
      __$$WeatherResponseDtoImplCopyWithImpl<_$WeatherResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _WeatherResponseDto implements WeatherResponseDto {
  const factory _WeatherResponseDto(
      {required final CoordDto? coord,
      required final List<WeatherDto>? weather,
      required final String? base,
      required final MainDto? main,
      required final int? visibility,
      required final WindDto? wind,
      required final CloudsDto? clouds,
      required final int? dt,
      required final SysDto? sys,
      required final int? timezone,
      required final int? id,
      required final String? name,
      required final int? cod}) = _$WeatherResponseDtoImpl;

  factory _WeatherResponseDto.fromJson(Map<String, dynamic> json) =
      _$WeatherResponseDtoImpl.fromJson;

  @override
  CoordDto? get coord;
  @override
  List<WeatherDto>? get weather;
  @override
  String? get base;
  @override
  MainDto? get main;
  @override
  int? get visibility;
  @override
  WindDto? get wind;
  @override
  CloudsDto? get clouds;
  @override
  int? get dt;
  @override
  SysDto? get sys;
  @override
  int? get timezone;
  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get cod;
  @override
  @JsonKey(ignore: true)
  _$$WeatherResponseDtoImplCopyWith<_$WeatherResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
