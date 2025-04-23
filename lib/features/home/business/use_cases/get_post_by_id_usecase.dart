import 'package:instagramultra/features/home/business/entities/post_entities.dart';
import 'package:instagramultra/features/home/business/repositories/home_repository.dart';

class GetPostByIdUsecase {
  HomeRepository repository;
  GetPostByIdUsecase({required this.repository});

  Future<PostEntities> getPostById({required int postId}) async {
    return await repository.getPostById(postId: postId);
  }
}
