import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherly/data/amadeus/amadeus.dart';

part 'address_data.freezed.dart';

@freezed
class AddressData with _$AddressData {
  const factory AddressData({
    required String countryCode,
  }) = _AddressData;

  const AddressData._();

  factory AddressData.fromDto(AddressDto dto) {
    return AddressData(
      countryCode: dto.countryCode ?? '',
    );
  }
}
