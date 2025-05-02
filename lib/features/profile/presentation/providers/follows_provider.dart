import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/profile/business/entities/follow_entity.dart';
import 'package:instagramultra/features/profile/presentation/providers/profile_proivders.dart';
import 'package:riverpod/riverpod.dart';

final getFollowsInfoProvider = StateNotifierProvider.family<FollowsController,
    AsyncValue<List<FollowEntity>>, String>(
  (ref, String userId) => FollowsController(ref, userId: userId),
);

class FollowsController extends StateNotifier<AsyncValue<List<FollowEntity>>> {
  final Ref ref;
  final String userId;
  FollowsController(this.ref, {required this.userId})
      : super(const AsyncLoading()) {
    getFollows();
  }
  Future<void> getFollows() async {
    try {
      state = const AsyncLoading();
      final follows =
          await ref.read(getFollowsInfoUseCases).getFollowsInfo(userId: userId);
      state = AsyncData(follows);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}
