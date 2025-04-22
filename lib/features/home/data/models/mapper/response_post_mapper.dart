import 'package:instagramultra/features/home/business/entities/response_post_entities.dart';
import 'package:instagramultra/features/home/data/models/mapper/post_mapper.dart';
import 'package:instagramultra/features/home/data/models/response_post_dto.dart';

extension ResponsePostMapper on ResponsePostDto {
  ResponsePostEntities toEntity() => ResponsePostEntities(
        pageNumber: pageNumber,
        pageSize: pageSize,
        totalPage: totalPage,
        totalRecord: totalRecord,
        data: data.map((e) => e.toEntity()).toList(),
        errors: errors,
        statusCode: statusCode,
      );
}
