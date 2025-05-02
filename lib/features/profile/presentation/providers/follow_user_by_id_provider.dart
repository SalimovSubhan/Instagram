import 'package:instagramultra/features/profile/presentation/providers/profile_proivders.dart';
import 'package:riverpod/riverpod.dart';

final followUserByIdProvider =
    StateNotifierProvider<FollowUserByIdController, AsyncValue<void>>(
  (ref) => FollowUserByIdController(ref),
);

class FollowUserByIdController extends StateNotifier<AsyncValue<void>> {
  final Ref ref;
  FollowUserByIdController(this.ref) : super(const AsyncLoading());
  Future<void> followUserById({required String userId}) async {
    try {
      state = const AsyncLoading();
      final result =
          await ref.read(followUserByIdUseCases).followUserById(userId: userId);
      state = AsyncValue.data(result);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}
