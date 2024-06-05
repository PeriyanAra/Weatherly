import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:http/http.dart' as http;
import 'package:weatherly/domain/domain.dart';

const _clientTimeoutSeconds = 30;

abstract class ApiRequestManager {
  static Future<ResponseResult<T, FailureResult>> guardApiCall<T, TSource>({
    required Future<Response<TSource>> Function() invoker,
    FutureOr<T> Function(TSource)? mapper,
    FutureOr<T> Function(Response<TSource>)? responseMapper,
    Future<T> Function()? fallbackInvoker,
    Future<void> Function(T)? saveCacheInvoker,
    bool Function(int code, Map<String, String> headers, String body)? fallbackValidator,
    T Function(Response<TSource> response)? fallbackMapper,
    T? defaultValue,
    Connectivity? mockConnectivity,
  }) async {
    try {
      final connectivity = mockConnectivity ?? Connectivity();
      final connectivityResult = await connectivity.checkConnectivity();

      if (connectivityResult.contains(ConnectivityResult.none) && fallbackInvoker != null) {
        final fallbackResponse =
            await fallbackInvoker().timeout(const Duration(seconds: _clientTimeoutSeconds));

        return ResponseResult.success(fallbackResponse);
      }

      final response = await invoker().timeout(const Duration(seconds: _clientTimeoutSeconds));

      if (response.isSuccessful) {
        final body = response.body;

        if (body != null && mapper != null) {
          final successResult = await mapper(body);
          await saveCacheInvoker?.call(successResult);

          return ResponseResult.success(successResult);
        } else if (responseMapper != null) {
          final successResult = await responseMapper(response);
          await saveCacheInvoker?.call(successResult);

          return ResponseResult.success(successResult);
        } else {
          return ResponseResult.success(defaultValue ?? null as T);
        }
      } else {
        return ResponseResult.failure(
          FailureResult(
            reason: FailureReasons.timeout,
            debugMessage: '${response.statusCode} on '
                '${response.base.request?.method} ${response.base.request?.url} | '
                'Body: ${response.bodyString}',
            statusCode: response.statusCode.toString(),
            errorMessage: _getErrorDetail(response.error),
          ),
        );
      }
    } on SocketException catch (ex) {
      return ResponseResult.failure(
        FailureResult(
          reason: FailureReasons.noInternetConnection,
          debugMessage: ex.toString(),
          statusCode: '',
          errorMessage: ex.message,
        ),
      );
    } on TimeoutException catch (ex) {
      return ResponseResult.failure(
        FailureResult(
          reason: FailureReasons.timeout,
          debugMessage: '${ex.toString()}\n Please check your VPN configuration.',
          statusCode: '',
          errorMessage: ex.message ?? '',
        ),
      );
    } on http.ClientException catch (ex) {
      return ResponseResult.failure(
        FailureResult(
          reason: FailureReasons.unknown,
          debugMessage: ex.toString(),
          statusCode: '',
          errorMessage: ex.message,
        ),
      );
    } catch (ex) {
      return ResponseResult.failure(
        FailureResult(
          reason: FailureReasons.unknown,
          debugMessage: ex.toString(),
          statusCode: '',
          errorMessage: ex.toString(),
        ),
      );
    }
  }
}

String _getErrorDetail(Object? error) {
  try {
    final Map<String, dynamic> errorBody = json.decode(error.toString());

    if (errorBody.containsKey('errors') && (errorBody['errors'] as List).isNotEmpty) {
      final error = errorBody['errors'][0];
      return error['detail'] ?? 'Unknown error';
    }

    return 'Unknown error';
  } catch (e) {
    return 'Unknown error';
  }
}
