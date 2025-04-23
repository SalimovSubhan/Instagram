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

  Future addComment({required String comment, required int postId}) async {
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

  Future<PostEntities> getPostById({required int postId}) async {
    final url = Apiendoint.post(PostEndpoint.GET_POST_BY_ID, id: postId);
    final response = await dio.get(url: url);
    if (response.statusCode == 200) {
      log.info('${response.statusCode} add comment');
    } else {
      log.error('${response.statusCode} add comment : $response');
    }
    final result = PostDto.fromJson(response.data['data']).toEntity();
    return result;
  }
}
