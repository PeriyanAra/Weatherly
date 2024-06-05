// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wind_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WindDtoImpl _$$WindDtoImplFromJson(Map<String, dynamic> json) =>
    _$WindDtoImpl(
      speed: (json['speed'] as num?)?.toDouble(),
      deg: (json['deg'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$WindDtoImplToJson(_$WindDtoImpl instance) =>
    <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
    };
