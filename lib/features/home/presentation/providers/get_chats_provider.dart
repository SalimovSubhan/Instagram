import 'package:instagramultra/features/home/business/entities/chats_entities.dart';
import 'package:instagramultra/features/home/business/use_cases/get_chats_usecase.dart';
import 'package:instagramultra/features/home/data/datasources/chat_remote_datasource.dart';
import 'package:instagramultra/features/home/data/repositories/chat_repository_imp.dart';
import 'package:riverpod/riverpod.dart';

final chatRemoteDatasourceProvider = Provider((ref) => ChatRemoteDatasource());
final chatrepositoryProvider = Provider((ref) => ChatRepositoryImp(
    remoteDatasource: ref.read(chatRemoteDatasourceProvider)));
final chatUsecaseProvider = Provider(
    (ref) => GetChatsUsecase(repository: ref.read(chatrepositoryProvider)));

final getChatsProvider = FutureProvider<List<ChatsEntities>>(
    (ref) => ref.read(chatUsecaseProvider).getChats());
