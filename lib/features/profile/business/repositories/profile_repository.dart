import 'package:instagramultra/features/profile/business/entities/follow_entity.dart';
import 'package:instagramultra/features/profile/business/entities/profile_info_entity.dart';

abstract class ProfileRepository {
  Future<ProfileInfoEntity> getProfileInfo();
  Future<List<FollowEntity>> getFollowersInfo({required String userId});
  Future<List<FollowEntity>> getFollowsInfo({required String userId});
}
