import 'package:sqflite/sqflite.dart';
import 'package:weatherly/core/core.dart';
import 'package:weatherly/data/amadeus/amadeus_api_service.dart';
import 'package:weatherly/data/client/amadeus_authenticator.dart';
import 'package:weatherly/data/client/client.dart';
import 'package:weatherly/data/client/interceptors/amadeus_auth_interceptor.dart';
import 'package:weatherly/data/data.dart';
import 'package:weatherly/data/database/database_creator.dart';
import 'package:weatherly/data/weather/weather.dart';
import 'package:weatherly/data/weather/weather_api_service.dart';
import 'package:weatherly/domain/domain.dart';

class DataDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    di.registerSingleton<Database>(
      await DatabaseCreator.initDatabase(),
    );

    await _registerDataSources(di);

    di
      ..registerLazySingleton<BaseLogger>(
        () => BaseLogger.factory(true),
      )
      ..registerLazySingleton<AmadeusAuthInterceptor>(
        () => AmadeusAuthInterceptor(
          valueStorage: di(),
        ),
      )
      ..registerLazySingleton<AmadeusAuthenticator>(
        () => AmadeusAuthenticator(
          updateToken: () async {
            final response = await di<AmadeusAuthRemoteDataSource>().getAccessToken();

            return response.isSuccess ? response.success.accessToken : null;
          },
        ),
      );

    await _registerApiServices(di);

    await _registerRepositories(di);
  }

  Future<void> _registerApiServices(DI di) async {
    final amadeusClient = BaseClient.createStagingClient(
      di(),
      authInterceptor: di<AmadeusAuthInterceptor>(),
      authenticator: di<AmadeusAuthenticator>(),
    );

    final weatherClient = BaseClient.createStagingClient(
      di(),
      baseUrl: 'https://api.openweathermap.org/data/2.5/',
    );

    di
      ..registerLazySingleton(
        () => AmadeusApiService.create(
          client: amadeusClient,
        ),
      )
      ..registerLazySingleton(
        () => WeatherApiService.create(
          client: weatherClient,
        ),
      );
  }

  Future<void> _registerDataSources(
    DI di,
  ) async {
    di
      ..registerLazySingleton<AmadeusAuthRemoteDataSource>(
        () => AmadeusAuthRemoteDataSource(
          amadeusApiService: di(),
          valueStorage: di(),
        ),
      )
      ..registerLazySingleton<AmadeusCityLocalDataSource>(
        () => AmadeusCityLocalDataSource(
          database: di(),
        ),
      )
      ..registerLazySingleton<AmadeusCityRemoteDataSource>(
        () => AmadeusCityRemoteDataSource(
          amadeusApiService: di(),
        ),
      )
      ..registerLazySingleton<WeatherRemoteDataSource>(
        () => WeatherRemoteDataSource(
          weatherApiService: di(),
        ),
      );
  }

  Future<void> _registerRepositories(DI di) async {
    di
      ..registerLazySingleton<CityRepository>(
        () => AmadeusCityRepositoryImpl(
          amadeusRemoteCityDataSource: di<AmadeusCityRemoteDataSource>(),
          amadeusLocalCityDataSource: di<AmadeusCityLocalDataSource>(),
        ),
      )
      ..registerLazySingleton<WeatherRepository>(
        () => WeatherRepositoryImpl(
          weatherDataSource: di<WeatherRemoteDataSource>(),
        ),
      );
  }
}

