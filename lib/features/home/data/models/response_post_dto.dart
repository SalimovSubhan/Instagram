import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagramultra/features/home/data/models/post_dto.dart';

part 'response_post_dto.g.dart';
part 'response_post_dto.freezed.dart';

@freezed
class ResponsePostDto with _$ResponsePostDto {
  const factory ResponsePostDto({
    required int pageNumber,
    required int pageSize,
    required int totalPage,
    required int totalRecord,
    required List<PostDto> data,
    required List<String> errors,
    required int statusCode,
  }) = _ResponsePostDto;

  factory ResponsePostDto.fromJson(Map<String, dynamic> json) =>
      _$ResponsePostDtoFromJson(json);
}
