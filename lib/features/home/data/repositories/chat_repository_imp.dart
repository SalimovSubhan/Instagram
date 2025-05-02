import 'package:instagramultra/features/home/business/entities/chats_entities.dart';
import 'package:instagramultra/features/home/business/repositories/chat_repository.dart';
import 'package:instagramultra/features/home/data/datasources/chat_remote_datasource.dart';

class ChatRepositoryImp implements ChatRepository {
  ChatRemoteDatasource remoteDatasource;
  ChatRepositoryImp({required this.remoteDatasource});

  @override
  Future<List<ChatsEntities>> getChats() {
    return remoteDatasource.getChats();
  }
}
