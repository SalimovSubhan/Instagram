import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/profile/business/entities/follow_entity.dart';
import 'package:instagramultra/features/profile/presentation/providers/profile_proivders.dart';
import 'package:riverpod/riverpod.dart';

final getFollowersInfoProivder = StateNotifierProvider.family<
    FollowersController, AsyncValue<List<FollowEntity>>, String>(
  (ref, String userId) => FollowersController(ref, userId: userId),
);

class FollowersController
    extends StateNotifier<AsyncValue<List<FollowEntity>>> {
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
