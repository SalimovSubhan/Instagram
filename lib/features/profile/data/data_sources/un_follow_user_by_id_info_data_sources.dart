import 'package:instagramultra/core/network/api_end_pont.dart';
import 'package:instagramultra/core/network/dio_service.dart';
import 'package:instagramultra/core/utils/log_service.dart';

class UnFollowUserByIdInfoDataSources {
  LogService log = LogService();
  final DioService dio;
  UnFollowUserByIdInfoDataSources({required this.dio});
  Future<void> unFollowUserById({required String userId}) async {
    final url = Apiendoint.followingRelationShip(
      FollowingRelationShipEndpoint.DELETE_FOLOWWING_RELATION_SHIP,
      followingUserId: userId,
    );
    final response = await dio.delete(url: url);
    if (response.
    statusCode == 200) {
      log.info(
          '${response.statusCode}  :UnFollowing User was successfull : ${response.data['data']}');
    } else {
      log.error(
          '${response.statusCode}:UnFollowing User was succes ${response.data}');
    }
  }
}
