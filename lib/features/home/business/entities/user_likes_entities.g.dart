// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_likes_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserLikesEntitiesImpl _$$UserLikesEntitiesImplFromJson(
        Map<String, dynamic> json) =>
    _$UserLikesEntitiesImpl(
      userId: json['userId'] as String?,
      userName: json['userName'] as String?,
      userPhoto: json['userPhoto'] as String?,
      fullname: json['fullname'] as String?,
    );

Map<String, dynamic> _$$UserLikesEntitiesImplToJson(
        _$UserLikesEntitiesImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'userPhoto': instance.userPhoto,
      'fullname': instance.fullname,
    };
