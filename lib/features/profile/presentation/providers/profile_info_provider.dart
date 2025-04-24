import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/profile/business/entities/profile_info_entity.dart';
import 'package:instagramultra/features/profile/presentation/providers/profile_proivders.dart'
    show getUseCaseProvider;
import 'package:riverpod/riverpod.dart';

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
