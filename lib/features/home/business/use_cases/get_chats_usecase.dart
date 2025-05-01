import 'package:instagramultra/features/home/business/entities/chats_entities.dart';
import 'package:instagramultra/features/home/business/repositories/chat_repository.dart';

class GetChatsUsecase {
  ChatRepository repository;
  GetChatsUsecase({required this.repository});

  Future<List<ChatsEntities>> getChats() async {
    return repository.getChats();
  }
}
