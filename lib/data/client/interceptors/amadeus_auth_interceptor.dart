import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:weatherly/domain/device/device.dart';

class AmadeusAuthInterceptor implements Interceptor {
  final AppKeyValueStorage _valueStorage;

  AmadeusAuthInterceptor({
    required AppKeyValueStorage valueStorage,
  }) : _valueStorage = valueStorage;

  @override
  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(Chain<BodyType> chain) async {
    if (chain.request.url.toString().contains('token')) return chain.proceed(chain.request);

    final token = await _valueStorage.read<String>('access_token');

    final request = applyHeader(
      chain.request,
      'Authorization',
      'Bearer $token',
      override: false,
    );

    return chain.proceed(request);
  }
}
