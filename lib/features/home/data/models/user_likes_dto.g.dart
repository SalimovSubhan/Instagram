// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_likes_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserLikesDtoImpl _$$UserLikesDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserLikesDtoImpl(
      userId: json['userId'] as String?,
      userName: json['userName'] as String?,
      userPhoto: json['userPhoto'] as String?,
      fullname: json['fullname'] as String?,
    );

Map<String, dynamic> _$$UserLikesDtoImplToJson(_$UserLikesDtoImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'userPhoto': instance.userPhoto,
      'fullname': instance.fullname,
    };
