import 'package:instagramultra/features/home/business/entities/response_post_entities.dart';
import 'package:instagramultra/features/home/data/datacources/get_post_remote_datacource.dart';
import '../../business/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final GetPostRemoteDatacource remoteDatacource;
  HomeRepositoryImpl({required this.remoteDatacource});

  @override
  Future<ResponsePostEntities> getPosts({int pageNumber = 1}) {
    return remoteDatacource.getPosts(pageNumber: pageNumber);
  }
}
