import 'package:instagramultra/features/home/business/entities/response_post_entities.dart';
import 'package:instagramultra/features/home/data/datasources/home_remote_datasource.dart';
import '../../business/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDatacource getPostRemoteDatacource;
  HomeRepositoryImpl(this.getPostRemoteDatacource);

  @override
  Future<ResponsePostEntities> getPosts({int pageNumber = 1}) {
    return getPostRemoteDatacource.getPosts(pageNumber: pageNumber);
  }

  @override
  Future addComment({required String comment, required int postId}) {
    return getPostRemoteDatacource.addComment(comment: comment, postId: postId);
  }
}
