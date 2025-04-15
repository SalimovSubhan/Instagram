// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginEntitiesImpl _$$LoginEntitiesImplFromJson(Map<String, dynamic> json) =>
    _$LoginEntitiesImpl(
      data: json['data'] as String?,
      errors:
          (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      statusCode: (json['statusCode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LoginEntitiesImplToJson(_$LoginEntitiesImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'errors': instance.errors,
      'statusCode': instance.statusCode,
    };
