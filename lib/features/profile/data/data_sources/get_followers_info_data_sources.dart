import 'package:instagramultra/core/network/api_end_pont.dart';
import 'package:instagramultra/core/network/dio_service.dart';
import 'package:instagramultra/core/utils/log_service.dart';
import 'package:instagramultra/features/profile/business/entities/follow_entity.dart';
import 'package:instagramultra/features/profile/data/model/follow_dto.dart';
import 'package:instagramultra/features/profile/data/model/mapper/follow_mapper.dart';

class GetFollowersInfoDataSources {
  LogService log = LogService();
  final DioService dio;
  GetFollowersInfoDataSources({required this.dio});
  Future<FollowEntity> getFollowersInfo({required String userId}) async {
    final url = Apiendoint.followingRelationShip(
        FollowingRelationShipEndpoint.GET_SUBSCRIBERS);
    final response = await dio.get(url: url);
    if (response.statusCode == 200) {
      log.info(
          '${response.statusCode}  :Get Profile Info successfully : ${response.data['data']}');
    } else {
      log.error('${response.statusCode}:Get Profile info ${response.data}');
    }
    return FollowDTO.fromJson(response.data['data']).toEntity();
  }
}
