import 'package:instagramultra/core/network/api_end_pont.dart';
import 'package:instagramultra/core/network/dio_service.dart';
import 'package:instagramultra/core/utils/log_service.dart';
import 'package:instagramultra/features/home/business/entities/post_entities.dart';
import 'package:instagramultra/features/home/business/entities/response_post_entities.dart';
import 'package:instagramultra/features/home/data/models/mapper/post_mapper.dart';
import 'package:instagramultra/features/home/data/models/mapper/response_post_mapper.dart';
import 'package:instagramultra/features/home/data/models/post_dto.dart';
import 'package:instagramultra/features/home/data/models/response_post_dto.dart';

class HomeRemoteDatacource {
  LogService log = LogService();
  final DioService dio = DioService();

  // get posts
  Future<ResponsePostEntities> getPosts({int pageNumber = 1}) async {
    final url = Apiendoint.post(PostEndpoint.GET_POSTS, pageNumber: pageNumber);

    final response = await dio.get(url: url);
    if (response.statusCode == 200) {
      log.info(
          '${response.statusCode}  :Get post successfully : ${response.data['data'][0]}');
    } else {
      log.error('${response.statusCode}:Get post   ${response.data}');
    }
    final result = ResponsePostDto.fromJson(response.data);
    return result.toEntity();
  }

  //get post by id
  Future<PostEntities> getPostById({required int postId}) async {
    final url = Apiendoint.post(PostEndpoint.GET_POST_BY_ID, id: postId);
    final response = await dio.get(url: url);
    if (response.statusCode == 200) {
      log.info('${response.statusCode} get post by id');
    } else {
      log.error('${response.statusCode} add comment : $response');
    }
    final result = PostDto.fromJson(response.data['data']).toEntity();
    return result;
  }

  //add comment
  Future<void> addComment(
      {required String comment, required int postId}) async {
    final url = Apiendoint.post(PostEndpoint.ADD_COMMENT);
    final body = {
      'comment': comment,
      'postId': postId,
    };
    final response = await dio.post(url: url, body: body);
    if (response.statusCode == 200) {
      log.info('${response.statusCode} add comment');
    } else {
      log.error('${response.statusCode} add comment : $response');
    }
  }

  //delete comment
  Future<void> deleteComment({required int commentId}) async {
    final url =
        Apiendoint.post(PostEndpoint.DELETE_COMMENT, commentId: commentId);
    final response = await dio.delete(url: url);
    if (response.statusCode == 200) {
      log.info('${response.statusCode} delete comment');
    } else {
      log.error('${response.statusCode} delete comment : $response');
    }
  }

  // like post
  Future likePost({required int postId}) async {
    final url = Apiendoint.post(PostEndpoint.LIKE_POST, postId: postId);

    final response = await dio.post(url: url);
    if (response.statusCode == 200) {
      log.info('${response.statusCode} like post');
    } else {
      log.error('${response.statusCode} like post : $response');
    }
    return response.data;
  }

  //add post favorite
  Future addPostFavorite({required int postId}) async {
    final url = Apiendoint.post(PostEndpoint.ADD_POST_FAVORITE);
    final body = {
      'postId': postId,
    };

    final response = await dio.post(url: url, body: body);
    if (response.statusCode == 200) {
      log.info('${response.statusCode} add post favorite');
    } else {
      log.error('${response.statusCode} add post favorite : $response');
    }
    return response.data;
  }
}
