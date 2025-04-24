import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/home/business/use_cases/delete_comment_usecase.dart';
import 'package:instagramultra/features/home/data/datasources/home_remote_datasource.dart';
import 'package:instagramultra/features/home/data/repositories/home_repository_impl.dart';

final remoteDatasourceProvider = Provider((ref) => HomeRemoteDatacource());

final repositoryProvider =
    Provider((ref) => HomeRepositoryImpl(ref.read(remoteDatasourceProvider)));

final deleteCommentUsecaseProvider = Provider(
    (ref) => DeleteCommentUsecase(repository: ref.read(repositoryProvider)));

class DeleteCommentNotifire extends AsyncNotifier {
  @override
  FutureOr build() {
    return null;
  }

  Future deleteComment({required int commentId}) async {
    await ref
        .read(deleteCommentUsecaseProvider)
        .deleteComment(commentId: commentId);
  }
}

final deleteCommentProvider =
    AsyncNotifierProvider<DeleteCommentNotifire, void>(
        () => DeleteCommentNotifire());
