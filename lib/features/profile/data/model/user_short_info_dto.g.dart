// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_short_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserShortInfoDTOImpl _$$UserShortInfoDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$UserShortInfoDTOImpl(
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      userPhoto: json['userPhoto'] as String?,
      fullName: json['fullName'] as String?,
    );

Map<String, dynamic> _$$UserShortInfoDTOImplToJson(
        _$UserShortInfoDTOImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'userPhoto': instance.userPhoto,
      'fullName': instance.fullName,
    };
