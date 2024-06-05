// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetaDtoImpl _$$MetaDtoImplFromJson(Map<String, dynamic> json) =>
    _$MetaDtoImpl(
      count: (json['count'] as num?)?.toInt(),
      links: json['links'] == null
          ? null
          : LinksDto.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MetaDtoImplToJson(_$MetaDtoImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'links': instance.links,
    };
