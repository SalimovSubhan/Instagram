import 'package:instagramultra/features/home/business/entities/comment_entities.dart';
import 'package:instagramultra/features/home/data/models/comment_dto.dart';

extension CommentMapper on CommentDto {
  CommentEntities toEntity() => CommentEntities(
        comment: comment,
        dateCommented: dateCommented,
        postCommentId: postCommentId,
        userId: userId,
        userImage: userImage,
        userName: userName,
      );
}
