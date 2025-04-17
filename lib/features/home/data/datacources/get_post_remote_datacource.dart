import 'package:instagramultra/core/network/api_end_pont.dart';
import 'package:instagramultra/core/network/dio_service.dart';
import 'package:instagramultra/features/home/business/entities/response_post_entities.dart';
import 'package:instagramultra/core/utils/log_service.dart';

class GetPostRemoteDatacource {
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
    return ResponsePostEntities.fromJson(response.data);
  }
}
