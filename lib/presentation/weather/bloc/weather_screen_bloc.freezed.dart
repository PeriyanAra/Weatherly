// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherScreenEvent {
  CoordinateViewModel get coordinate => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CoordinateViewModel coordinate) getData,
    required TResult Function(
            String name, CoordinateViewModel coordinate, VoidCallback onSuccess)
        saveLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CoordinateViewModel coordinate)? getData,
    TResult? Function(String name, CoordinateViewModel coordinate,
            VoidCallback onSuccess)?
        saveLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CoordinateViewModel coordinate)? getData,
    TResult Function(String name, CoordinateViewModel coordinate,
            VoidCallback onSuccess)?
        saveLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherScreenGetDataEvent value) getData,
    required TResult Function(_WeatherScreenSaveLocationEvent value)
        saveLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherScreenGetDataEvent value)? getData,
    TResult? Function(_WeatherScreenSaveLocationEvent value)? saveLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherScreenGetDataEvent value)? getData,
    TResult Function(_WeatherScreenSaveLocationEvent value)? saveLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherScreenEventCopyWith<WeatherScreenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherScreenEventCopyWith<$Res> {
  factory $WeatherScreenEventCopyWith(
          WeatherScreenEvent value, $Res Function(WeatherScreenEvent) then) =
      _$WeatherScreenEventCopyWithImpl<$Res, WeatherScreenEvent>;
  @useResult
  $Res call({CoordinateViewModel coordinate});

  $CoordinateViewModelCopyWith<$Res> get coordinate;
}

/// @nodoc
class _$WeatherScreenEventCopyWithImpl<$Res, $Val extends WeatherScreenEvent>
    implements $WeatherScreenEventCopyWith<$Res> {
  _$WeatherScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinate = null,
  }) {
    return _then(_value.copyWith(
      coordinate: null == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as CoordinateViewModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordinateViewModelCopyWith<$Res> get coordinate {
    return $CoordinateViewModelCopyWith<$Res>(_value.coordinate, (value) {
      return _then(_value.copyWith(coordinate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherScreenGetDataEventImplCopyWith<$Res>
    implements $WeatherScreenEventCopyWith<$Res> {
  factory _$$WeatherScreenGetDataEventImplCopyWith(
          _$WeatherScreenGetDataEventImpl value,
          $Res Function(_$WeatherScreenGetDataEventImpl) then) =
      __$$WeatherScreenGetDataEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CoordinateViewModel coordinate});

  @override
  $CoordinateViewModelCopyWith<$Res> get coordinate;
}

/// @nodoc
class __$$WeatherScreenGetDataEventImplCopyWithImpl<$Res>
    extends _$WeatherScreenEventCopyWithImpl<$Res,
        _$WeatherScreenGetDataEventImpl>
    implements _$$WeatherScreenGetDataEventImplCopyWith<$Res> {
  __$$WeatherScreenGetDataEventImplCopyWithImpl(
      _$WeatherScreenGetDataEventImpl _value,
      $Res Function(_$WeatherScreenGetDataEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinate = null,
  }) {
    return _then(_$WeatherScreenGetDataEventImpl(
      coordinate: null == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as CoordinateViewModel,
    ));
  }
}

/// @nodoc

class _$WeatherScreenGetDataEventImpl implements _WeatherScreenGetDataEvent {
  const _$WeatherScreenGetDataEventImpl({required this.coordinate});

  @override
  final CoordinateViewModel coordinate;

  @override
  String toString() {
    return 'WeatherScreenEvent.getData(coordinate: $coordinate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherScreenGetDataEventImpl &&
            (identical(other.coordinate, coordinate) ||
                other.coordinate == coordinate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coordinate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherScreenGetDataEventImplCopyWith<_$WeatherScreenGetDataEventImpl>
      get copyWith => __$$WeatherScreenGetDataEventImplCopyWithImpl<
          _$WeatherScreenGetDataEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CoordinateViewModel coordinate) getData,
    required TResult Function(
            String name, CoordinateViewModel coordinate, VoidCallback onSuccess)
        saveLocation,
  }) {
    return getData(coordinate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CoordinateViewModel coordinate)? getData,
    TResult? Function(String name, CoordinateViewModel coordinate,
            VoidCallback onSuccess)?
        saveLocation,
  }) {
    return getData?.call(coordinate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CoordinateViewModel coordinate)? getData,
    TResult Function(String name, CoordinateViewModel coordinate,
            VoidCallback onSuccess)?
        saveLocation,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(coordinate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherScreenGetDataEvent value) getData,
    required TResult Function(_WeatherScreenSaveLocationEvent value)
        saveLocation,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherScreenGetDataEvent value)? getData,
    TResult? Function(_WeatherScreenSaveLocationEvent value)? saveLocation,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherScreenGetDataEvent value)? getData,
    TResult Function(_WeatherScreenSaveLocationEvent value)? saveLocation,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class _WeatherScreenGetDataEvent implements WeatherScreenEvent {
  const factory _WeatherScreenGetDataEvent(
          {required final CoordinateViewModel coordinate}) =
      _$WeatherScreenGetDataEventImpl;

  @override
  CoordinateViewModel get coordinate;
  @override
  @JsonKey(ignore: true)
  _$$WeatherScreenGetDataEventImplCopyWith<_$WeatherScreenGetDataEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeatherScreenSaveLocationEventImplCopyWith<$Res>
    implements $WeatherScreenEventCopyWith<$Res> {
  factory _$$WeatherScreenSaveLocationEventImplCopyWith(
          _$WeatherScreenSaveLocationEventImpl value,
          $Res Function(_$WeatherScreenSaveLocationEventImpl) then) =
      __$$WeatherScreenSaveLocationEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, CoordinateViewModel coordinate, VoidCallback onSuccess});

  @override
  $CoordinateViewModelCopyWith<$Res> get coordinate;
}

/// @nodoc
class __$$WeatherScreenSaveLocationEventImplCopyWithImpl<$Res>
    extends _$WeatherScreenEventCopyWithImpl<$Res,
        _$WeatherScreenSaveLocationEventImpl>
    implements _$$WeatherScreenSaveLocationEventImplCopyWith<$Res> {
  __$$WeatherScreenSaveLocationEventImplCopyWithImpl(
      _$WeatherScreenSaveLocationEventImpl _value,
      $Res Function(_$WeatherScreenSaveLocationEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? coordinate = null,
    Object? onSuccess = null,
  }) {
    return _then(_$WeatherScreenSaveLocationEventImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coordinate: null == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as CoordinateViewModel,
      onSuccess: null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$WeatherScreenSaveLocationEventImpl
    implements _WeatherScreenSaveLocationEvent {
  const _$WeatherScreenSaveLocationEventImpl(
      {required this.name, required this.coordinate, required this.onSuccess});

  @override
  final String name;
  @override
  final CoordinateViewModel coordinate;
  @override
  final VoidCallback onSuccess;

  @override
  String toString() {
    return 'WeatherScreenEvent.saveLocation(name: $name, coordinate: $coordinate, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherScreenSaveLocationEventImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.coordinate, coordinate) ||
                other.coordinate == coordinate) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, coordinate, onSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherScreenSaveLocationEventImplCopyWith<
          _$WeatherScreenSaveLocationEventImpl>
      get copyWith => __$$WeatherScreenSaveLocationEventImplCopyWithImpl<
          _$WeatherScreenSaveLocationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CoordinateViewModel coordinate) getData,
    required TResult Function(
            String name, CoordinateViewModel coordinate, VoidCallback onSuccess)
        saveLocation,
  }) {
    return saveLocation(name, coordinate, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CoordinateViewModel coordinate)? getData,
    TResult? Function(String name, CoordinateViewModel coordinate,
            VoidCallback onSuccess)?
        saveLocation,
  }) {
    return saveLocation?.call(name, coordinate, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CoordinateViewModel coordinate)? getData,
    TResult Function(String name, CoordinateViewModel coordinate,
            VoidCallback onSuccess)?
        saveLocation,
    required TResult orElse(),
  }) {
    if (saveLocation != null) {
      return saveLocation(name, coordinate, onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherScreenGetDataEvent value) getData,
    required TResult Function(_WeatherScreenSaveLocationEvent value)
        saveLocation,
  }) {
    return saveLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherScreenGetDataEvent value)? getData,
    TResult? Function(_WeatherScreenSaveLocationEvent value)? saveLocation,
  }) {
    return saveLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherScreenGetDataEvent value)? getData,
    TResult Function(_WeatherScreenSaveLocationEvent value)? saveLocation,
    required TResult orElse(),
  }) {
    if (saveLocation != null) {
      return saveLocation(this);
    }
    return orElse();
  }
}

abstract class _WeatherScreenSaveLocationEvent implements WeatherScreenEvent {
  const factory _WeatherScreenSaveLocationEvent(
          {required final String name,
          required final CoordinateViewModel coordinate,
          required final VoidCallback onSuccess}) =
      _$WeatherScreenSaveLocationEventImpl;

  String get name;
  @override
  CoordinateViewModel get coordinate;
  VoidCallback get onSuccess;
  @override
  @JsonKey(ignore: true)
  _$$WeatherScreenSaveLocationEventImplCopyWith<
          _$WeatherScreenSaveLocationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            WeatherDetailsViewModel viewModel, String? errorMessage)
        loaded,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(WeatherDetailsViewModel viewModel, String? errorMessage)?
        loaded,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(WeatherDetailsViewModel viewModel, String? errorMessage)?
        loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherScreenLoadingState value) loading,
    required TResult Function(WeatherScreenLoadedState value) loaded,
    required TResult Function(WeatherScreenErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherScreenLoadingState value)? loading,
    TResult? Function(WeatherScreenLoadedState value)? loaded,
    TResult? Function(WeatherScreenErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherScreenLoadingState value)? loading,
    TResult Function(WeatherScreenLoadedState value)? loaded,
    TResult Function(WeatherScreenErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherScreenStateCopyWith<$Res> {
  factory $WeatherScreenStateCopyWith(
          WeatherScreenState value, $Res Function(WeatherScreenState) then) =
      _$WeatherScreenStateCopyWithImpl<$Res, WeatherScreenState>;
}

/// @nodoc
class _$WeatherScreenStateCopyWithImpl<$Res, $Val extends WeatherScreenState>
    implements $WeatherScreenStateCopyWith<$Res> {
  _$WeatherScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WeatherScreenLoadingStateImplCopyWith<$Res> {
  factory _$$WeatherScreenLoadingStateImplCopyWith(
          _$WeatherScreenLoadingStateImpl value,
          $Res Function(_$WeatherScreenLoadingStateImpl) then) =
      __$$WeatherScreenLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherScreenLoadingStateImplCopyWithImpl<$Res>
    extends _$WeatherScreenStateCopyWithImpl<$Res,
        _$WeatherScreenLoadingStateImpl>
    implements _$$WeatherScreenLoadingStateImplCopyWith<$Res> {
  __$$WeatherScreenLoadingStateImplCopyWithImpl(
      _$WeatherScreenLoadingStateImpl _value,
      $Res Function(_$WeatherScreenLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WeatherScreenLoadingStateImpl implements WeatherScreenLoadingState {
  const _$WeatherScreenLoadingStateImpl();

  @override
  String toString() {
    return 'WeatherScreenState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherScreenLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            WeatherDetailsViewModel viewModel, String? errorMessage)
        loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(WeatherDetailsViewModel viewModel, String? errorMessage)?
        loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(WeatherDetailsViewModel viewModel, String? errorMessage)?
        loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherScreenLoadingState value) loading,
    required TResult Function(WeatherScreenLoadedState value) loaded,
    required TResult Function(WeatherScreenErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherScreenLoadingState value)? loading,
    TResult? Function(WeatherScreenLoadedState value)? loaded,
    TResult? Function(WeatherScreenErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherScreenLoadingState value)? loading,
    TResult Function(WeatherScreenLoadedState value)? loaded,
    TResult Function(WeatherScreenErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WeatherScreenLoadingState implements WeatherScreenState {
  const factory WeatherScreenLoadingState() = _$WeatherScreenLoadingStateImpl;
}

/// @nodoc
abstract class _$$WeatherScreenLoadedStateImplCopyWith<$Res> {
  factory _$$WeatherScreenLoadedStateImplCopyWith(
          _$WeatherScreenLoadedStateImpl value,
          $Res Function(_$WeatherScreenLoadedStateImpl) then) =
      __$$WeatherScreenLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WeatherDetailsViewModel viewModel, String? errorMessage});

  $WeatherDetailsViewModelCopyWith<$Res> get viewModel;
}

/// @nodoc
class __$$WeatherScreenLoadedStateImplCopyWithImpl<$Res>
    extends _$WeatherScreenStateCopyWithImpl<$Res,
        _$WeatherScreenLoadedStateImpl>
    implements _$$WeatherScreenLoadedStateImplCopyWith<$Res> {
  __$$WeatherScreenLoadedStateImplCopyWithImpl(
      _$WeatherScreenLoadedStateImpl _value,
      $Res Function(_$WeatherScreenLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewModel = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$WeatherScreenLoadedStateImpl(
      viewModel: null == viewModel
          ? _value.viewModel
          : viewModel // ignore: cast_nullable_to_non_nullable
              as WeatherDetailsViewModel,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherDetailsViewModelCopyWith<$Res> get viewModel {
    return $WeatherDetailsViewModelCopyWith<$Res>(_value.viewModel, (value) {
      return _then(_value.copyWith(viewModel: value));
    });
  }
}

/// @nodoc

class _$WeatherScreenLoadedStateImpl implements WeatherScreenLoadedState {
  const _$WeatherScreenLoadedStateImpl(
      {required this.viewModel, this.errorMessage});

  @override
  final WeatherDetailsViewModel viewModel;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'WeatherScreenState.loaded(viewModel: $viewModel, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherScreenLoadedStateImpl &&
            (identical(other.viewModel, viewModel) ||
                other.viewModel == viewModel) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewModel, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherScreenLoadedStateImplCopyWith<_$WeatherScreenLoadedStateImpl>
      get copyWith => __$$WeatherScreenLoadedStateImplCopyWithImpl<
          _$WeatherScreenLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            WeatherDetailsViewModel viewModel, String? errorMessage)
        loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loaded(viewModel, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(WeatherDetailsViewModel viewModel, String? errorMessage)?
        loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loaded?.call(viewModel, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(WeatherDetailsViewModel viewModel, String? errorMessage)?
        loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(viewModel, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherScreenLoadingState value) loading,
    required TResult Function(WeatherScreenLoadedState value) loaded,
    required TResult Function(WeatherScreenErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherScreenLoadingState value)? loading,
    TResult? Function(WeatherScreenLoadedState value)? loaded,
    TResult? Function(WeatherScreenErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherScreenLoadingState value)? loading,
    TResult Function(WeatherScreenLoadedState value)? loaded,
    TResult Function(WeatherScreenErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class WeatherScreenLoadedState implements WeatherScreenState {
  const factory WeatherScreenLoadedState(
      {required final WeatherDetailsViewModel viewModel,
      final String? errorMessage}) = _$WeatherScreenLoadedStateImpl;

  WeatherDetailsViewModel get viewModel;
  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$WeatherScreenLoadedStateImplCopyWith<_$WeatherScreenLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeatherScreenErrorStateImplCopyWith<$Res> {
  factory _$$WeatherScreenErrorStateImplCopyWith(
          _$WeatherScreenErrorStateImpl value,
          $Res Function(_$WeatherScreenErrorStateImpl) then) =
      __$$WeatherScreenErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$WeatherScreenErrorStateImplCopyWithImpl<$Res>
    extends _$WeatherScreenStateCopyWithImpl<$Res,
        _$WeatherScreenErrorStateImpl>
    implements _$$WeatherScreenErrorStateImplCopyWith<$Res> {
  __$$WeatherScreenErrorStateImplCopyWithImpl(
      _$WeatherScreenErrorStateImpl _value,
      $Res Function(_$WeatherScreenErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$WeatherScreenErrorStateImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WeatherScreenErrorStateImpl implements WeatherScreenErrorState {
  const _$WeatherScreenErrorStateImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'WeatherScreenState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherScreenErrorStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherScreenErrorStateImplCopyWith<_$WeatherScreenErrorStateImpl>
      get copyWith => __$$WeatherScreenErrorStateImplCopyWithImpl<
          _$WeatherScreenErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            WeatherDetailsViewModel viewModel, String? errorMessage)
        loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(WeatherDetailsViewModel viewModel, String? errorMessage)?
        loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(WeatherDetailsViewModel viewModel, String? errorMessage)?
        loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherScreenLoadingState value) loading,
    required TResult Function(WeatherScreenLoadedState value) loaded,
    required TResult Function(WeatherScreenErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherScreenLoadingState value)? loading,
    TResult? Function(WeatherScreenLoadedState value)? loaded,
    TResult? Function(WeatherScreenErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherScreenLoadingState value)? loading,
    TResult Function(WeatherScreenLoadedState value)? loaded,
    TResult Function(WeatherScreenErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class WeatherScreenErrorState implements WeatherScreenState {
  const factory WeatherScreenErrorState({required final String errorMessage}) =
      _$WeatherScreenErrorStateImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$WeatherScreenErrorStateImplCopyWith<_$WeatherScreenErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
