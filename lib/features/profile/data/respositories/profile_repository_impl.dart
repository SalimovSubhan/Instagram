import 'package:instagramultra/features/profile/business/entities/follow_entity.dart';
import 'package:instagramultra/features/profile/business/entities/profile_info_entity.dart';
import 'package:instagramultra/features/profile/business/repositories/profile_repository.dart';
import 'package:instagramultra/features/profile/data/data_sources/get_followers_info_data_sources.dart';
import 'package:instagramultra/features/profile/data/data_sources/get_profile_info_data_sources.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final GetProfileInfoDataSources getProfileInfoDataSources;
  final GetFollowersInfoDataSources getFollowersInfoDataSources;

  ProfileRepositoryImpl(
      {required this.getProfileInfoDataSources,
      required this.getFollowersInfoDataSources});
  @override
  Future<ProfileInfoEntity> getProfileInfo() {
    return getProfileInfoDataSources.getProfileInfo();
  }

  @override
  Future<FollowEntity> getFollowersInfo({required String userId}) {
    return getFollowersInfoDataSources.getFollowersInfo(userId: userId);
  }
}
