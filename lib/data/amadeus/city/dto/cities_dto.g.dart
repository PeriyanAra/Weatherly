// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cities_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CitiesDtoImpl _$$CitiesDtoImplFromJson(Map<String, dynamic> json) =>
    _$CitiesDtoImpl(
      meta: json['meta'] == null
          ? null
          : MetaDto.fromJson(json['meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CityDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      warnings: (json['warnings'] as List<dynamic>?)
          ?.map((e) => WarningsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CitiesDtoImplToJson(_$CitiesDtoImpl instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
      'warnings': instance.warnings,
    };
