// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_favorite_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserFavoriteDtoImpl _$$UserFavoriteDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserFavoriteDtoImpl(
      userId: json['userId'] as String?,
      userName: json['userName'] as String?,
      userPhoto: json['userPhoto'] as String?,
      fullname: json['fullname'] as String?,
    );

Map<String, dynamic> _$$UserFavoriteDtoImplToJson(
        _$UserFavoriteDtoImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'userPhoto': instance.userPhoto,
      'fullname': instance.fullname,
    };
