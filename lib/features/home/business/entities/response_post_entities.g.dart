// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_post_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponsePostEntitiesImpl _$$ResponsePostEntitiesImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponsePostEntitiesImpl(
      pageNumber: (json['pageNumber'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      totalPage: (json['totalPage'] as num).toInt(),
      totalRecord: (json['totalRecord'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => PostEntities.fromJson(e as Map<String, dynamic>))
          .toList(),
      errors:
          (json['errors'] as List<dynamic>).map((e) => e as String).toList(),
      statusCode: (json['statusCode'] as num).toInt(),
    );

Map<String, dynamic> _$$ResponsePostEntitiesImplToJson(
        _$ResponsePostEntitiesImpl instance) =>
    <String, dynamic>{
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'totalPage': instance.totalPage,
      'totalRecord': instance.totalRecord,
      'data': instance.data,
      'errors': instance.errors,
      'statusCode': instance.statusCode,
    };
