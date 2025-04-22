// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentDtoImpl _$$CommentDtoImplFromJson(Map<String, dynamic> json) =>
    _$CommentDtoImpl(
      postCommentId: (json['postCommentId'] as num?)?.toInt(),
      userId: json['userId'] as String?,
      userName: json['userName'] as String?,
      userImage: json['userImage'] as String?,
      dateCommented: json['dateCommented'] as String?,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$CommentDtoImplToJson(_$CommentDtoImpl instance) =>
    <String, dynamic>{
      'postCommentId': instance.postCommentId,
      'userId': instance.userId,
      'userName': instance.userName,
      'userImage': instance.userImage,
      'dateCommented': instance.dateCommented,
      'comment': instance.comment,
    };
