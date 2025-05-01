import 'package:instagramultra/features/home/business/entities/chats_entities.dart';

abstract class ChatRepository {
  Future<List<ChatsEntities>> getChats();
}
