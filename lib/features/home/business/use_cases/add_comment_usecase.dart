import 'package:instagramultra/features/home/business/repositories/home_repository.dart';

class AddCommentUsecase {
  HomeRepository repository;
  AddCommentUsecase({required this.repository});
  Future addComment({required String comment, required int postId}) async {
    return await repository.addComment(comment: comment, postId: postId);
  }
}
