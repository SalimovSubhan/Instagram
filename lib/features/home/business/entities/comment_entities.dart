class CommentEntities {
  final int? postCommentId;
  final String? userId;
  final String? userName;
  final String? userImage;
  final String? dateCommented;
  final String? comment;

  CommentEntities({
    required this.comment,
    required this.dateCommented,
    required this.postCommentId,
    required this.userId,
    required this.userImage,
    required this.userName,
  });
}
