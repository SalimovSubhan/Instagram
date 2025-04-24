import 'package:instagramultra/features/home/business/repositories/home_repository.dart';

class LikePostUsecase {
  final HomeRepository repository;
  LikePostUsecase({required this.repository});

  Future likePost({required int postId}) async {
    return await repository.likePost(postId: postId);
  }
}
