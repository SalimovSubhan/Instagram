import 'package:instagramultra/features/profile/presentation/providers/profile_proivders.dart';
import 'package:riverpod/riverpod.dart';

final unFollowUserByIdProvider =
    StateNotifierProvider<UnFollowUserByIdController, AsyncValue<void>>(
  (ref) => UnFollowUserByIdController(ref),
);

class UnFollowUserByIdController extends StateNotifier<AsyncValue<void>> {
  final Ref ref;
  UnFollowUserByIdController(this.ref) : super(const AsyncLoading());
  Future<void> unFollowUserById({required String userId}) async {
    try {
      state = const AsyncLoading();
      final result = await ref
          .read(unFollowUserByIdUseCases)
          .unFollowUserById(userId: userId);
      state = AsyncValue.data(result);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}
