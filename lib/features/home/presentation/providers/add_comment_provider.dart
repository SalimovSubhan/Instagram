import 'dart:async';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/home/business/use_cases/add_comment_usecase.dart';
import 'package:instagramultra/features/home/data/datasources/home_remote_datasource.dart';
import 'package:instagramultra/features/home/data/repositories/home_repository_impl.dart';

final getPostRemoteDatacourceProvider =
    Provider((ref) => HomeRemoteDatacource());

final repositoryImplProvider = Provider(
    (ref) => HomeRepositoryImpl(ref.read(getPostRemoteDatacourceProvider)));

final addCommentUsecseProvider = Provider(
    (ref) => AddCommentUsecase(repository: ref.read(repositoryImplProvider)));

class AddCommentNotifire extends AsyncNotifier {
  @override
  FutureOr build() {
    return null;
  }

  Future addComment({required String comment, required int postId}) async {
    state = const AsyncLoading();
    try {
      await ref
          .read(addCommentUsecseProvider)
          .addComment(comment: comment, postId: postId);
      state = const AsyncData(null);
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
    }
  }
}

final addCommentProvider =
    AsyncNotifierProvider<AddCommentNotifire, void>(() => AddCommentNotifire());
