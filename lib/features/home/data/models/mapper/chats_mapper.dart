import 'package:instagramultra/features/home/business/entities/chats_entities.dart';
import 'package:instagramultra/features/home/data/models/chats_dto.dart';

extension ChatsMapper on ChatsDto {
  ChatsEntities toEntity() {
    return ChatsEntities(
      chatId: chatId,
      receiveUserId: receiveUserId,
      receiveUserImage: receiveUserImage,
      receiveUserName: receiveUserName,
      sendUserId: sendUserId,
      sendUserImage: sendUserImage,
      sendUserName: sendUserName,
    );
  }
}
