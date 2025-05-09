// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostDtoImpl _$$PostDtoImplFromJson(Map<String, dynamic> json) =>
    _$PostDtoImpl(
      title: json['title'] as String?,
      commentCount: (json['commentCount'] as num).toInt(),
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => CommentDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      content: json['content'] as String?,
      datePublished: json['datePublished'] as String,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      postFavorite: json['postFavorite'] as bool,
      postId: (json['postId'] as num).toInt(),
      postLike: json['postLike'] as bool,
      postLikeCount: (json['postLikeCount'] as num?)?.toInt(),
      postView: (json['postView'] as num).toInt(),
      userFavorite: (json['userFavorite'] as List<dynamic>?)
          ?.map((e) => UserFavoriteDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      userId: json['userId'] as String,
      userImage: json['userImage'] as String?,
      userLikes: (json['userLikes'] as List<dynamic>?)
          ?.map((e) => UserLikesDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      userName: json['userName'] as String?,
      userViews: (json['userViews'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$PostDtoImplToJson(_$PostDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'commentCount': instance.commentCount,
      'comments': instance.comments,
      'content': instance.content,
      'datePublished': instance.datePublished,
      'images': instance.images,
      'postFavorite': instance.postFavorite,
      'postId': instance.postId,
      'postLike': instance.postLike,
      'postLikeCount': instance.postLikeCount,
      'postView': instance.postView,
      'userFavorite': instance.userFavorite,
      'userId': instance.userId,
      'userImage': instance.userImage,
      'userLikes': instance.userLikes,
      'userName': instance.userName,
      'userViews': instance.userViews,
    };
