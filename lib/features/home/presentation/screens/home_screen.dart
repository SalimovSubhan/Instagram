import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:instagramultra/features/home/business/entities/post_entities.dart';
import 'package:instagramultra/features/home/presentation/providers/get_post_provider.dart';
import 'package:instagramultra/features/home/presentation/providers/home_providers.dart';
import 'package:instagramultra/features/home/presentation/widgets/home_appbar_widget.dart';
import 'package:instagramultra/features/home/presentation/widgets/home_post_widget.dart';
import 'package:instagramultra/features/home/presentation/widgets/home_stories_widget.dart';
import 'package:instagramultra/core/storage/prefs_service.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PrefsService prefs = PrefsService();
    final pagingController = useMemoized(
      () {
        return PagingController<int, PostEntities>(firstPageKey: 1);
      },
    );
    final scrolController = ref.watch(scrolControllerProvider);

    useEffect(() {
      pagingController.addPageRequestListener(
        (pageKey) async {
          try {
            final result = await ref.read(getPostProvider(pageKey).future);
            final isLastPage = result.data.isEmpty;
            if (isLastPage) {
              pagingController.appendLastPage(result.data);
            } else {
              pagingController.appendPage(result.data, pageKey + 1);
            }
          } catch (e) {
            pagingController.error = e;
          }
        },
      );
      return null;
    }, []);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(getPostProvider(1));
          pagingController.refresh();
        },
        child: CustomScrollView(
          controller: scrolController,
          slivers: [
            const HomeAppbarWidget(),
            const HomeStoriesWidget(),
            SliverToBoxAdapter(
              child: GestureDetector(
                  onTap: () {
                    prefs.deleteToken();
                    context.go('/login');
                  },
                  child: const Icon(Icons.close)),
            ),
            HomePostWidget(pagingController: pagingController),
          ],
        ),
      ),
    );
  }
}
