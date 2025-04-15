import 'package:instagramultra/features/home/business/entities/response_post_entities.dart';
import 'package:instagramultra/features/home/business/repositories/home_repository.dart';

class GetPostsUsecase {
  HomeRepository repository;
  GetPostsUsecase({required this.repository});
  Future<ResponsePostEntities> getPosts({int pageNumber = 1}) async {
    return await repository.getPosts(pageNumber: pageNumber);
  }
}
