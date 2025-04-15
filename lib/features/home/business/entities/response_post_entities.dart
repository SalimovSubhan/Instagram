import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagramultra/features/home/business/entities/post_entities.dart';

part 'response_post_entities.g.dart';
part 'response_post_entities.freezed.dart';

@freezed
class ResponsePostEntities with _$ResponsePostEntities {
  const factory ResponsePostEntities({
    required int pageNumber,
    required int pageSize,
    required int totalPage,
    required int totalRecord,
    required List<PostEntities> data,
    required List<String> errors,
    required int statusCode,
  }) = _ResponsePostEntities;

  factory ResponsePostEntities.fromJson(Map<String, dynamic> json) =>
      _$ResponsePostEntitiesFromJson(json);
}
