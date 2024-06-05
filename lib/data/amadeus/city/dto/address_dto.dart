import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_dto.freezed.dart';
part 'address_dto.g.dart';

@freezed
class AddressDto with _$AddressDto {
  const factory AddressDto({
    required String? countryCode,
    required String? stateCode,
  }) = _AddressDto;

  factory AddressDto.fromJson(Map<String, Object?> json) => _$AddressDtoFromJson(json);
}
