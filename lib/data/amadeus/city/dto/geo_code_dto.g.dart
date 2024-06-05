// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_code_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeoCodeDtoImpl _$$GeoCodeDtoImplFromJson(Map<String, dynamic> json) =>
    _$GeoCodeDtoImpl(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$GeoCodeDtoImplToJson(_$GeoCodeDtoImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
