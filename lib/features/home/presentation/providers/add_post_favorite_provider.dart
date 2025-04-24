import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/home/business/use_cases/add_post_favorite_usecase.dart';
import 'package:instagramultra/features/home/data/datasources/home_remote_datasource.dart';
import 'package:instagramultra/features/home/data/repositories/home_repository_impl.dart';

final homeRemoteDatacourceProvider = Provider((ref) => HomeRemoteDatacource());
final homeRepositoryImplProvider = Provider(
    (ref) => HomeRepositoryImpl(ref.read(homeRemoteDatacourceProvider)));

final likePostUsecaseProvider = Provider((ref) =>
    AddPostFavoriteUsecase(repository: ref.read(homeRepositoryImplProvider)));

class LikePostFavoriteNotifire extends AsyncNotifier<Map<String, dynamic>> {
  @override
  FutureOr<Map<String, dynamic>> build() {
    return {};
  }

  Future likePostFavorite({required int postId}) async {
    final response =
        await ref.read(likePostUsecaseProvider).addPostFavorite(postId: postId);
    state = AsyncData(response);
  }
}

final likePostFavoriteProvider =
    AsyncNotifierProvider<LikePostFavoriteNotifire, Map<String, dynamic>>(
  () => LikePostFavoriteNotifire(),
);
