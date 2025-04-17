import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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

    return RefreshIndicator(
      onRefresh: () async {
        pagingController.refresh();
      },
      child: Scaffold(
        body: CustomScrollView(
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
          ],
        ),
      ),
    );
  }
}
