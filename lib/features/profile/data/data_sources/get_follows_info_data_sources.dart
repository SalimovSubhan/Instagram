import 'package:instagramultra/core/network/api_end_pont.dart';
import 'package:instagramultra/core/network/dio_service.dart';
import 'package:instagramultra/core/utils/log_service.dart';
import 'package:instagramultra/features/profile/business/entities/follow_entity.dart';
import 'package:instagramultra/features/profile/data/model/follow_dto.dart';
import 'package:instagramultra/features/profile/data/model/mapper/follow_mapper.dart';

class GetFollowsInfoDataSources {
  LogService log = LogService();
  final DioService dio;
  GetFollowsInfoDataSources({required this.dio});
  Future<List<FollowEntity>> getFollowsInfo({required String userId}) async {
    final url = Apiendoint.followingRelationShip(
      FollowingRelationShipEndpoint.GET_SUBSCRIPTIONS,
      userId: userId,
    );
    final response = await dio.get(url: url);
    final follows = response.data['data'] as List<dynamic>;
    if (response.statusCode == 200) {
      log.info(
          '${response.statusCode}  :Get Follows Info successfully : ${response.data['data']}');
    } else {
      log.error('${response.statusCode}:Get Follows info ${response.data}');
    }
    return List.generate(
      follows.length,
      (index) => FollowDTO.fromJson(follows[index]).toEntity(),
    );
  }
}
