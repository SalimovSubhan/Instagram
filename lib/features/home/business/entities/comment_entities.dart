import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_entities.g.dart';
part 'comment_entities.freezed.dart';

@freezed
class CommentEntities with _$CommentEntities {
  const factory CommentEntities({
    int? postCommentId,
    String? userId,
    String? userName,
    String? userImage,
    String? dateCommented,
    String? comment,
  }) = _CommentEntities;

  factory CommentEntities.fromJson(Map<String, dynamic> json) =>
      _$CommentEntitiesFromJson(json);
}
