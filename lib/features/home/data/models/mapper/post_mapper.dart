import 'package:instagramultra/features/home/business/entities/post_entities.dart';
import 'package:instagramultra/features/home/data/models/mapper/comment_mapper.dart';
import 'package:instagramultra/features/home/data/models/mapper/user_favorite_maper.dart';
import 'package:instagramultra/features/home/data/models/mapper/user_likes_mapper.dart';
import 'package:instagramultra/features/home/data/models/post_dto.dart';

extension PostMapper on PostDto {
  PostEntities toEntity() => PostEntities(
        title: title,
        commentCount: commentCount,
        comments: comments?.map((e) => e.toEntity()).toList(),
        content: content,
        datePublished: datePublished,
        images: images,
        postFavorite: postFavorite,
        postId: postId,
        postLike: postLike,
        postLikeCount: postLikeCount,
        postView: postView,
        userFavorite: userFavorite?.map((e) => e.toEntity()).toList(),
        userId: userId,
        userImage: userImage,
        userLikes: userLikes?.map((e) => e.toEntity()).toList(),
        userName: userName,
        userViews: userViews,
      );
}
