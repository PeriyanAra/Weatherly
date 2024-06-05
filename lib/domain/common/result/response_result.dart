import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_result.freezed.dart';

@freezed
class ResponseResult<T, E extends Exception> with _$ResponseResult<T, E> {
  const ResponseResult._();

  const factory ResponseResult.success(T data) = _Success;
  const factory ResponseResult.failure(E error) = _Failure;

  bool get isSuccess => this is _Success;
  bool get isFailed => this is _Failure;

  T get success => (this as _Success).data as T;
  E get failure => (this as _Failure).error as E;
}
