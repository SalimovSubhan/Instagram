import 'package:instagramultra/features/home/business/use_cases/get_post_by_id_usecase.dart';
import 'package:instagramultra/features/home/data/datasources/home_remote_datasource.dart';
import 'package:instagramultra/features/home/data/repositories/home_repository_impl.dart';
import 'package:riverpod/riverpod.dart';

final dataSourcesProvider = Provider((ref) => HomeRemoteDatacource());
final repositoryProvider =
    Provider((ref) => HomeRepositoryImpl(ref.read(dataSourcesProvider)));
final getPostByIdUsecaseProvider = Provider(
    (ref) => GetPostByIdUsecase(repository: ref.read(repositoryProvider)));

final getPostByIdProvider = FutureProvider.family((ref, int postId) {
  return ref.read(getPostByIdUsecaseProvider).getPostById(postId: postId);
});
