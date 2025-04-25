import 'package:instagramultra/features/home/business/repositories/home_repository.dart';

class AddPostFavoriteUsecase {
  final HomeRepository repository;
  AddPostFavoriteUsecase({required this.repository});

  Future addPostFavorite({required int postId}) async {
    return await repository.addPostFavorite(postId: postId);
  }
}
