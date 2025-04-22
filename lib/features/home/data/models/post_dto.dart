import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagramultra/features/home/data/models/comment_dto.dart';
import 'package:instagramultra/features/home/data/models/user_favorite_dto.dart';
import 'package:instagramultra/features/home/data/models/user_likes_dto.dart';

part 'post_dto.freezed.dart';
part 'post_dto.g.dart';

@freezed
class PostDto with _$PostDto {
  const factory PostDto({
    String? title,
    required int commentCount,
    List<CommentDto>? comments,
    String? content,
    required String datePublished,
    List<String>? images,
    required bool postFavorite,
    required int postId,
    required bool postLike,
    int? postLikeCount,
    required int postView,
    List<UserFavoriteDto>? userFavorite,
    required String userId,
    String? userImage,
    List<UserLikesDto>? userLikes,
    String? userName,
    List<String>? userViews,
  }) = _PostDto;

  factory PostDto.fromJson(Map<String, dynamic> json) =>
      _$PostDtoFromJson(json);
}
