import 'package:instagramultra/features/home/business/entities/response_post_entities.dart';

abstract class HomeRepository {
  Future<ResponsePostEntities> getPosts({int pageNumber =1});
}
