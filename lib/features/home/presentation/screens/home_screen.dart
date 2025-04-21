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
    final pagingController = ref.watch(pagingControllerProvider);
    final scrolController = ref.watch(scrolControllerProvider);

    useEffect(() {
      pagingController.addPageRequestListener(
        (pageKey) async {
          try {
            final result = await ref.read(getPostProvider(pageKey).future);
            await Future.delayed(const Duration(seconds: 1));
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
          pagingController.refresh();
        },
        child: CustomScrollView(
          controller: scrolController,
          physics: const AlwaysScrollableScrollPhysics(),
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
