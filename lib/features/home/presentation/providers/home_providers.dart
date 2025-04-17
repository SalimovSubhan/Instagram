import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:instagramultra/features/home/business/entities/post_entities.dart';
import 'package:instagramultra/features/home/presentation/providers/get_post_provider.dart';

final pagingControllerProvider =
    Provider.autoDispose<PagingController<int, PostEntities>>(
  (ref) {
    final controller = PagingController<int, PostEntities>(firstPageKey: 1);

    controller.addPageRequestListener(
      (pageKey) async {
        try {
          final result = await ref.read(getPostProvider(pageKey).future);
          final isLastPage = result.data.length < 5;
          if (isLastPage) {
            controller.appendLastPage(result.data);
          } else {
            final nextPageKey = pageKey + 1;
            controller.appendPage(result.data, nextPageKey);
          }
        } catch (e) {
          controller.error = e;
        }
      },
    );
    ref.onDispose(controller.dispose);
    return controller;
  },
);

final postsProvider = StateProvider<Set<PostEntities>>((ref) => {});
final pageProvider = StateProvider<int>((ref) => 1);
final lastPageProvider = StateProvider<int>((ref) => 0);
final isLoadingProvider = StateProvider<bool>((ref) => false);
