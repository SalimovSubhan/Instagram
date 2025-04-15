import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagramultra/features/home/business/entities/comment_entities.dart';
import 'package:instagramultra/features/home/business/entities/user_favorite_entities.dart';
import 'package:instagramultra/features/home/business/entities/user_likes_entities.dart';

part 'post_entities.freezed.dart';
part 'post_entities.g.dart';

@freezed
class PostEntities with _$PostEntities {
  const factory PostEntities({
    String? title,
    required int commentCount,
    List<CommentEntities>? comments,
    String? content,
    required String datePublished,
    List<String>? images,
    required bool postFavorite,
    required int postId,
    required bool postLike,
    int? postLikeCount,
    required int postView,
    List<UserFavoriteEntities>? userFavorite,
    required String userId,
    String? userImage,
    List<UserLikesEntities>? userLikes,
    String? userName,
    List<dynamic>? userViews,
  }) = _PostEntities;

  factory PostEntities.fromJson(Map<String, dynamic> json) =>
      _$PostEntitiesFromJson(json);
}
