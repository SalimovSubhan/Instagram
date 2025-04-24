import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/home/business/use_cases/like_post_usecase.dart';
import 'package:instagramultra/features/home/data/datasources/home_remote_datasource.dart';
import 'package:instagramultra/features/home/data/repositories/home_repository_impl.dart';

final homeRemoteDataSourceProvider = Provider((ref) => HomeRemoteDatacource());
final homeRepositoryImplProvider = Provider(
    (ref) => HomeRepositoryImpl(ref.read(homeRemoteDataSourceProvider)));
final likePostUsecaseProvider = Provider(
    (ref) => LikePostUsecase(repository: ref.read(homeRepositoryImplProvider)));

class LikePostNotifire extends AsyncNotifier<Map<String, dynamic>> {
  @override
  FutureOr<Map<String, dynamic>> build() {
    return {};
  }

  Future likePost({required int postId}) async {
    final response =
        await ref.read(likePostUsecaseProvider).likePost(postId: postId);
    state = AsyncData(response);
  }
}

final likePostProvider =
    AsyncNotifierProvider<LikePostNotifire, Map<String, dynamic>>(
        () => LikePostNotifire());
