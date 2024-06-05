import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weatherly/data/amadeus/amadeus.dart';
import 'package:weatherly/data/amadeus/amadeus_api_service.dart';
import 'package:weatherly/data/client/client.dart';
import 'package:weatherly/domain/domain.dart';

class AmadeusAuthRemoteDataSource extends AmadeusAuthDataSource {
  final AmadeusApiService _amadeusApiService;
  final AppKeyValueStorage _valueStorage;
  AmadeusAuthRemoteDataSource({
    required AmadeusApiService amadeusApiService,
    required AppKeyValueStorage valueStorage,
  })  : _amadeusApiService = amadeusApiService,
        _valueStorage = valueStorage;

  @override
  Future<ResponseResult<AmadeusAuthDto, FailureResult>> getAccessToken() {
    return ApiRequestManager.guardApiCall<AmadeusAuthDto, AmadeusAuthDto>(
      invoker: () => _amadeusApiService.getAccessToken(
        fields: {
          "grant_type": "client_credentials",
          "client_id": dotenv.env['AmadeusClientId'] ?? '',
          "client_secret": dotenv.env['AmadeusClientSecret'] ?? ""
        },
      ),
      mapper: (dto) {
        _valueStorage.write<String>(
          'access_token',
          dto.accessToken,
        );

        return dto;
      },
    );
  }
}
