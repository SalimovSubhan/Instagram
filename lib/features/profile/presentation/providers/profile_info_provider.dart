import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/profile/business/entities/profile_info_entity.dart';
import 'package:instagramultra/features/profile/business/use_cases/get_profile_info_use_cases.dart';
import 'package:instagramultra/features/profile/data/data_sources/get_followers_info_data_sources.dart';
import 'package:instagramultra/features/profile/data/respositories/profile_repository_impl.dart';
import 'package:instagramultra/features/profile/presentation/providers/followers_provider.dart';
import 'package:riverpod/riverpod.dart';

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

final getProfileInfoProvider =
    StateNotifierProvider<ProfileController, AsyncValue<ProfileInfoEntity>>(
  (ref) => ProfileController(ref),
);

class ProfileController extends StateNotifier<AsyncValue<ProfileInfoEntity>> {
  final Ref ref;
  ProfileController(this.ref) : super(const AsyncLoading()) {
    fetchProfileInfo();
  }
  Future<void> fetchProfileInfo() async {
    try {
      final profile = await ref.read(getUseCaseProvider).getProfileInfo();
      state = AsyncData(profile);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}
