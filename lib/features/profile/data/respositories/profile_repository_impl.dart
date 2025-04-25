import 'package:instagramultra/features/profile/business/entities/follow_entity.dart';
import 'package:instagramultra/features/profile/business/entities/profile_info_entity.dart';
import 'package:instagramultra/features/profile/business/repositories/profile_repository.dart';
import 'package:instagramultra/features/profile/data/data_sources/get_followers_info_data_sources.dart';
import 'package:instagramultra/features/profile/data/data_sources/get_follows_info_data_sources.dart';
import 'package:instagramultra/features/profile/data/data_sources/get_is_followed_info_data_sources.dart';
import 'package:instagramultra/features/profile/data/data_sources/get_profile_info_data_sources.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final GetProfileInfoDataSources getProfileInfoDataSources;
  final GetFollowersInfoDataSources getFollowersInfoDataSources;
  final GetFollowsInfoDataSources getFollowsInfoDataSources;
  final GetIsFollowedInfoDataSources getIsFollowedInfoDataSources;

  ProfileRepositoryImpl(
      {required this.getFollowsInfoDataSources,
      required this.getProfileInfoDataSources,
      required this.getFollowersInfoDataSources,
      required this.getIsFollowedInfoDataSources});
  @override
  Future<ProfileInfoEntity> getProfileInfo() {
    return getProfileInfoDataSources.getProfileInfo();
  }

  @override
  Future<List<FollowEntity>> getFollowersInfo({required String userId}) {
    return getFollowersInfoDataSources.getFollowersInfo(userId: userId);
  }

  @override
  Future<List<FollowEntity>> getFollowsInfo({required String userId}) {
    return getFollowsInfoDataSources.getFollowsInfo(userId: userId);
  }

  @override
  Future<bool> getIsFollowed({required String userId}) {
    return getIsFollowedInfoDataSources.getIsFollowed(userId: userId);
  }
}
