// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileInfoEntityImpl _$$ProfileInfoEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileInfoEntityImpl(
      userImage: json['userImage'] as String?,
      userId: json['userId'] as String?,
      userName: json['userName'] as String?,
      postCount: (json['postCount'] as num?)?.toInt(),
      followerCount: (json['followerCount'] as num?)?.toInt(),
      followingCount: (json['followingCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProfileInfoEntityImplToJson(
        _$ProfileInfoEntityImpl instance) =>
    <String, dynamic>{
      'userImage': instance.userImage,
      'userId': instance.userId,
      'userName': instance.userName,
      'postCount': instance.postCount,
      'followerCount': instance.followerCount,
      'followingCount': instance.followingCount,
    };
