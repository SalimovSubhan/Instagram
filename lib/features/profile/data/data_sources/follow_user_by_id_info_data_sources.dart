import 'package:instagramultra/core/network/api_end_pont.dart';
import 'package:instagramultra/core/network/dio_service.dart';
import 'package:instagramultra/core/utils/log_service.dart';

class FollowUserByIdInfoDataSources {
  LogService log = LogService();
  final DioService dio;
  FollowUserByIdInfoDataSources({required this.dio});
  Future<void> followUserById({required String userId}) async {
    final url = Apiendoint.followingRelationShip(
        FollowingRelationShipEndpoint.ADD_FOLOWWING_RELATION_SHIP,
        followingUserId: userId);
    final response = await dio.post(url: url);
    if (response.statusCode == 200) {
      log.info(
          '${response.statusCode}  :Following User was successfull : ${response.data['data']}');
    } else {
      log.error(
          '${response.statusCode}:Following User was succes ${response.data}');
    }
  }
}
