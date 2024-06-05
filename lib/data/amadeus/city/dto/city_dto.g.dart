// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityDtoImpl _$$CityDtoImplFromJson(Map<String, dynamic> json) =>
    _$CityDtoImpl(
      name: json['name'] as String?,
      geoCode: json['geoCode'] == null
          ? null
          : GeoCodeDto.fromJson(json['geoCode'] as Map<String, dynamic>),
      type: json['type'] as String?,
      subType: json['subType'] as String?,
      address: json['address'] == null
          ? null
          : AddressDto.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CityDtoImplToJson(_$CityDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'geoCode': instance.geoCode,
      'type': instance.type,
      'subType': instance.subType,
      'address': instance.address,
    };
