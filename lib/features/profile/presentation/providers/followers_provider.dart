import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/core/network/dio_service.dart';
import 'package:instagramultra/features/profile/business/entities/follow_entity.dart';
import 'package:instagramultra/features/profile/business/use_cases/get_profile_info_use_cases.dart';
import 'package:instagramultra/features/profile/data/data_sources/get_followers_info_data_sources.dart';
import 'package:instagramultra/features/profile/data/data_sources/get_profile_info_data_sources.dart';
import 'package:instagramultra/features/profile/data/respositories/profile_repository_impl.dart';
import 'package:riverpod/riverpod.dart';

final dioProvider = Provider(
  (ref) => DioService(),
);

final profileInfoDataSourceProvider = Provider(
  (ref) => GetProfileInfoDataSources(dio: ref.read(dioProvider)),
);
final followersDataSourceProvider = Provider(
  (ref) => GetFollowersInfoDataSources(dio: ref.read(dioProvider)),
);
final profileRepositoryProvider = Provider(
  (ref) => ProfileRepositoryImpl(
      getProfileInfoDataSources: ref.read(profileInfoDataSourceProvider),
      getFollowersInfoDataSources: ref.read(followersDataSourceProvider)),
);
final getUseCaseProvider = Provider(
  (ref) => GetProfileInfoUseCases(
      profileRepository: ref.read(profileRepositoryProvider)),
);

final getFollowersInfoProivder = StateNotifierProvider.family(
  (ref, String userId) => FollowersController(ref, userId: userId),
);

class FollowersController extends StateNotifier<AsyncValue<FollowEntity>> {
  final Ref ref;
  final String userId;
  FollowersController(this.ref, {required this.userId})
      : super(const AsyncLoading()) {
    getFollowers();
  }
  Future<void> getFollowers() async {
    try {
      final followers =
          await ref.read(getUseCaseProvider).getFollowersInfo(userId: userId);
      state = AsyncData(followers);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}
