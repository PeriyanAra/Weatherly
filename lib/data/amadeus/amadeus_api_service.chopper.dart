// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amadeus_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$AmadeusApiService extends AmadeusApiService {
  _$AmadeusApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = AmadeusApiService;

  @override
  Future<Response<AmadeusAuthDto>> getAccessToken(
      {required Map<String, String> fields}) {
    final Uri $url = Uri.parse('security/oauth2/token');
    final Map<String, String> $headers = {
      'content-type': 'application/x-www-form-urlencoded',
    };
    final $body = fields;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<AmadeusAuthDto, AmadeusAuthDto>($request);
  }

  @override
  Future<Response<CitiesDto>> searchCities({
    required String keyword,
    required int max,
  }) {
    final Uri $url = Uri.parse('reference-data/locations/cities');
    final Map<String, dynamic> $params = <String, dynamic>{
      'keyword': keyword,
      'max': max,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<CitiesDto, CitiesDto>($request);
  }
}
