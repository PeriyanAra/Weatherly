// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'amadeus_auth_dto.freezed.dart';
part 'amadeus_auth_dto.g.dart';

@freezed
class AmadeusAuthDto with _$AmadeusAuthDto {
  const factory AmadeusAuthDto({
    required String type,
    required String username,
    @JsonKey(name: "application_name") required String applicationName,
    @JsonKey(name: "client_id") required String clientId,
    @JsonKey(name: "token_type") required String tokenType,
    @JsonKey(name: "access_token") required String accessToken,
    @JsonKey(name: "expires_in") required int expiresIn,
    required String state,
    required String scope,
  }) = _AmadeusAuthDto;

  factory AmadeusAuthDto.fromJson(Map<String, Object?> json) => _$AmadeusAuthDtoFromJson(json);
}
