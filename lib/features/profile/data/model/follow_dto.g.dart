// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follow_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FollowDTOImpl _$$FollowDTOImplFromJson(Map<String, dynamic> json) =>
    _$FollowDTOImpl(
      id: (json['id'] as num).toInt(),
      userShortInfo: UserShortInfoDTO.fromJson(
          json['userShortInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FollowDTOImplToJson(_$FollowDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userShortInfo': instance.userShortInfo,
    };
