// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_post_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponsePostDtoImpl _$$ResponsePostDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponsePostDtoImpl(
      pageNumber: (json['pageNumber'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      totalPage: (json['totalPage'] as num).toInt(),
      totalRecord: (json['totalRecord'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => PostDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      errors:
          (json['errors'] as List<dynamic>).map((e) => e as String).toList(),
      statusCode: (json['statusCode'] as num).toInt(),
    );

Map<String, dynamic> _$$ResponsePostDtoImplToJson(
        _$ResponsePostDtoImpl instance) =>
    <String, dynamic>{
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'totalPage': instance.totalPage,
      'totalRecord': instance.totalRecord,
      'data': instance.data,
      'errors': instance.errors,
      'statusCode': instance.statusCode,
    };
