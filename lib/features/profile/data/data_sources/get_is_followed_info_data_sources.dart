import 'package:instagramultra/core/network/api_end_pont.dart';
import 'package:instagramultra/core/network/dio_service.dart';
import 'package:instagramultra/core/utils/log_service.dart';
 
class GetIsFollowedInfoDataSources {
  LogService log = LogService();
  final DioService dio;
  GetIsFollowedInfoDataSources({required this.dio});
  Future<bool> getIsFollowed({required String userId}) async {
    final url = Apiendoint.userProfile(
      UserProfileEndpoint.GET__IS_FOLLOW_USER_PROFILE_BY_ID,
      followingUserId: userId,
    );
    final response = await dio.get(url: url);
    if (response.statusCode == 200) {
      log.info(
          '${response.statusCode}  :Get Followers Info successfully : ${response.data['data']}');
    } else {
      log.error('${response.statusCode}:Get Followers info ${response.data}');
    }
    return response.data['data']['isSubscriber'] ?? false;
  }
}
