// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sys_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SysDtoImpl _$$SysDtoImplFromJson(Map<String, dynamic> json) => _$SysDtoImpl(
      type: (json['type'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      country: json['country'] as String?,
      sunrise: (json['sunrise'] as num?)?.toInt(),
      sunset: (json['sunset'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SysDtoImplToJson(_$SysDtoImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'country': instance.country,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };
