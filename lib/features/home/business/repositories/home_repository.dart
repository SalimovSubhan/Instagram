import 'package:instagramultra/features/home/business/entities/post_entities.dart';
import 'package:instagramultra/features/home/business/entities/response_post_entities.dart';

abstract class HomeRepository {
  Future<ResponsePostEntities> getPosts({int pageNumber = 1});

  Future<PostEntities> getPostById({required int postId});

  Future<void> addComment({required String comment, required int postId});

  Future<void> deleteComment({required int commentId});

  Future likePost({required int postId});

  Future addPostFavorite({required int postId});
}
