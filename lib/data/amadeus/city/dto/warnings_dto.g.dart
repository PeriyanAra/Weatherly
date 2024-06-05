// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warnings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WarningsDtoImpl _$$WarningsDtoImplFromJson(Map<String, dynamic> json) =>
    _$WarningsDtoImpl(
      code: (json['code'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      title: json['title'] as String?,
      detail: json['detail'] as String?,
    );

Map<String, dynamic> _$$WarningsDtoImplToJson(_$WarningsDtoImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'title': instance.title,
      'detail': instance.detail,
    };
