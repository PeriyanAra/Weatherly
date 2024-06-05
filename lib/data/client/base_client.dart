import 'package:chopper/chopper.dart';
import 'package:weatherly/data/client/custom_serialize.dart';
import 'package:weatherly/data/client/interceptors/chopper_logging_interceptor.dart';
import 'package:weatherly/data/common/logger/logger.dart';

abstract class BaseClient {
  static ChopperClient createStagingClient(
    BaseLogger logger, {
    Interceptor? authInterceptor,
    Authenticator? authenticator,
    String baseUrl = 'https://test.api.amadeus.com/v1/',
  }) {
    final interceptors = [
      ChopperLoggingInterceptor(logger),
      if (authInterceptor != null) authInterceptor,
    ];

    return ChopperClient(
      baseUrl: Uri.parse(baseUrl),
      converter: JsonSerializableConverter.instance,
      interceptors: interceptors,
      authenticator: authenticator,
    );
  }
}

