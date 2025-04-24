import 'package:instagramultra/features/home/business/repositories/home_repository.dart';

class DeleteCommentUsecase {
  HomeRepository repository;
  DeleteCommentUsecase({required this.repository});
  Future deleteComment({required int commentId}) async {
    return await repository.deleteComment(commentId: commentId);
  }
}
