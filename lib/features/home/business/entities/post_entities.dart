import 'package:instagramultra/features/home/business/entities/comment_entities.dart';
import 'package:instagramultra/features/home/business/entities/user_favorite_entities.dart';
import 'package:instagramultra/features/home/business/entities/user_likes_entities.dart';

class PostEntities {
  final String? title;
  int commentCount;
  final List<CommentEntities>? comments;
  final String? content;
  final String datePublished;
  final List<String>? images;
  bool? postFavorite;
  final int postId;
  bool? postLike;
  int? postLikeCount;
  final int postView;
  final List<UserFavoriteEntities>? userFavorite;
  final String userId;
  final String? userImage;
  final List<UserLikesEntities>? userLikes;
  final String? userName;
  final List<dynamic>? userViews;

  PostEntities({
    required this.title,
    required this.commentCount,
    required this.comments,
    required this.content,
    required this.datePublished,
    required this.images,
    required this.postFavorite,
    required this.postId,
    required this.postLike,
    required this.postLikeCount,
    required this.postView,
    required this.userFavorite,
    required this.userId,
    required this.userImage,
    required this.userLikes,
    required this.userName,
    required this.userViews,
  });
}
