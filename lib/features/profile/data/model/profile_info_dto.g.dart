// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileInfoDTOImpl _$$ProfileInfoDTOImplFromJson(Map<String, dynamic> json) =>
    _$ProfileInfoDTOImpl(
      image: json['image'] as String?,
      userId: json['userId'] as String?,
      userName: json['userName'] as String?,
      about: json['about'] as String?,
      postCount: (json['postCount'] as num?)?.toInt(),
      subscribersCount: (json['subscribersCount'] as num?)?.toInt(),
      subscriptionsCount: (json['subscriptionsCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProfileInfoDTOImplToJson(
        _$ProfileInfoDTOImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'userId': instance.userId,
      'userName': instance.userName,
      'about': instance.about,
      'postCount': instance.postCount,
      'subscribersCount': instance.subscribersCount,
      'subscriptionsCount': instance.subscriptionsCount,
    };
