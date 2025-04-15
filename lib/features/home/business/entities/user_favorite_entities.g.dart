// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_favorite_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserFavoriteEntitiesImpl _$$UserFavoriteEntitiesImplFromJson(
        Map<String, dynamic> json) =>
    _$UserFavoriteEntitiesImpl(
      userId: json['userId'] as String?,
      userName: json['userName'] as String?,
      userPhoto: json['userPhoto'] as String?,
      fullname: json['fullname'] as String?,
    );

Map<String, dynamic> _$$UserFavoriteEntitiesImplToJson(
        _$UserFavoriteEntitiesImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'userPhoto': instance.userPhoto,
      'fullname': instance.fullname,
    };
