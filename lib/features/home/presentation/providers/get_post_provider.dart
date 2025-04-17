import 'package:instagramultra/features/home/business/use_cases/get_posts_usecase.dart';
import 'package:instagramultra/features/home/data/repositories/home_repository_impl.dart';
import 'package:riverpod/riverpod.dart';

final repositoryImplProvider = Provider((ref) => HomeRepositoryImpl());
final getPostUsecaseProvider = Provider(
    (ref) => GetPostsUsecase(repository: ref.read(repositoryImplProvider)));

final getPostProvider = FutureProvider.family((ref, int pageNumber) {
  return ref.read(getPostUsecaseProvider).getPosts(pageNumber: pageNumber);
});
