import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_dto.g.dart';
part 'comment_dto.freezed.dart';

@freezed
class CommentDto with _$CommentDto {
  const factory CommentDto({
    int? postCommentId,
    String? userId,
    String? userName,
    String? userImage,
    String? dateCommented,
    String? comment,
  }) = _CommentDto;

  factory CommentDto.fromJson(Map<String, dynamic> json) =>
      _$CommentDtoFromJson(json);
}
