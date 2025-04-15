import 'package:instagramultra/core/network/dio_service.dart';
import 'package:instagramultra/features/home/business/use_cases/get_posts_usecase.dart';
import 'package:instagramultra/features/home/data/datacources/get_post_remote_datacource.dart';
import 'package:instagramultra/features/home/data/repositories/home_repository_impl.dart';
import 'package:riverpod/riverpod.dart';

final dioProvider = Provider((ref) => DioService());
final dataCourceProvider =
    Provider((ref) => GetPostRemoteDatacource(dio: ref.read(dioProvider)));
final repositoryImplProvider = Provider((ref) =>
    HomeRepositoryImpl(remoteDatacource: ref.read(dataCourceProvider)));
final getPostUsecaseProvider = Provider(
    (ref) => GetPostsUsecase(repository: ref.read(repositoryImplProvider)));

final getPostProvider = FutureProvider.family((ref, int pageNumber) {
  return ref.read(getPostUsecaseProvider).getPosts(pageNumber: pageNumber);
});
