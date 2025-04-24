import 'package:instagramultra/features/home/business/entities/post_entities.dart';
import 'package:instagramultra/features/home/business/entities/response_post_entities.dart';
import 'package:instagramultra/features/home/data/datasources/home_remote_datasource.dart';
import '../../business/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDatacource remoteDatacource;
  HomeRepositoryImpl(this.remoteDatacource);

  @override
  Future<ResponsePostEntities> getPosts({int pageNumber = 1}) async {
    return remoteDatacource.getPosts(pageNumber: pageNumber);
  }

  @override
  Future addComment({required String comment, required int postId}) {
    return remoteDatacource.addComment(comment: comment, postId: postId);
  }

  @override
  Future<PostEntities> getPostById({required int postId}) {
    return remoteDatacource.getPostById(postId: postId);
  }

  @override
  Future deleteComment({required int commentId}) {
    return remoteDatacource.deleteComment(commentId: commentId);
  }

  @override
  Future likePost({required int postId}) {
    return remoteDatacource.likePost(postId: postId);
  }
}
