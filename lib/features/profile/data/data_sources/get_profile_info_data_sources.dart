import 'package:instagramultra/core/network/api_end_pont.dart';
import 'package:instagramultra/core/network/dio_service.dart';
import 'package:instagramultra/core/utils/log_service.dart';
import 'package:instagramultra/features/profile/business/entities/profile_info_entity.dart';
import 'package:instagramultra/features/profile/data/model/mapper/profile_info_mapper.dart';
import 'package:instagramultra/features/profile/data/model/profile_info_dto.dart';

class GetProfileInfoDataSources {
  LogService log = LogService();
  final DioService dio;
  GetProfileInfoDataSources({required this.dio});
  Future<ProfileInfoEntity> getProfileInfo() async {
    final url = Apiendoint.userProfile(UserProfileEndpoint.GET_MY_PROFILE);
    final response = await dio.get(url: url);
    if (response.statusCode == 200) {
      log.info(
          '${response.statusCode}  :Get Profile Info successfully : ${response.data['data']}');
    } else {
      log.error('${response.statusCode}:Get Profile info ${response.data}');
    }
    return ProfileInfoDTO.fromJson(response.data['data']).toEntity();
  }
}
