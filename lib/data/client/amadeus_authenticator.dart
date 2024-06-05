import 'dart:async';

import 'package:chopper/chopper.dart';

class AmadeusAuthenticator extends Authenticator {
  Future<String?> Function()? updateToken;

  AmadeusAuthenticator({
    required this.updateToken,
  });

  @override
  FutureOr<Request?> authenticate(
    Request request,
    Response<dynamic> response, [
    Request? originalRequest,
  ]) async {
    if (request.url.toString().contains('token')) return null;

    if (request.headers['Retry-Count'] != null) return null;

    if (response.statusCode == 401 || response.statusCode == 403) {
      final token = await updateToken?.call();

      if (token == null) return null;

      return request.copyWith(headers: {
        "Authorization": 'Bearer $token',
        'Retry-Count': '1',
      });
    }

    return null;
  }
}
