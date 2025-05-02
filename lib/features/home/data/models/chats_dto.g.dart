// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatsDtoImpl _$$ChatsDtoImplFromJson(Map<String, dynamic> json) =>
    _$ChatsDtoImpl(
      sendUserId: json['sendUserId'] as String,
      sendUserName: json['sendUserName'] as String?,
      sendUserImage: json['sendUserImage'] as String?,
      chatId: (json['chatId'] as num).toInt(),
      receiveUserId: json['receiveUserId'] as String,
      receiveUserName: json['receiveUserName'] as String?,
      receiveUserImage: json['receiveUserImage'] as String?,
    );

Map<String, dynamic> _$$ChatsDtoImplToJson(_$ChatsDtoImpl instance) =>
    <String, dynamic>{
      'sendUserId': instance.sendUserId,
      'sendUserName': instance.sendUserName,
      'sendUserImage': instance.sendUserImage,
      'chatId': instance.chatId,
      'receiveUserId': instance.receiveUserId,
      'receiveUserName': instance.receiveUserName,
      'receiveUserImage': instance.receiveUserImage,
    };
