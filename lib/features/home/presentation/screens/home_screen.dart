import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/home/presentation/providers/get_post_provider.dart';
import 'package:instagramultra/features/home/presentation/providers/scroll_controller_provider.dart';
import 'package:instagramultra/features/home/presentation/widgets/home_appbar_widget.dart';
import 'package:instagramultra/features/home/presentation/widgets/home_post_widget.dart';
import 'package:instagramultra/features/home/presentation/widgets/home_stories_widget.dart';
import 'package:instagramultra/core/storage/prefs_service.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PrefsService prefs = PrefsService();
    final scrolController = ref.watch(scrolControllerProvider);

    return RefreshIndicator(
      onRefresh: () async {
        final rrr = ref.refresh(getPostProvider(1));
        print(rrr);
      },
      child: Scaffold(
        body: CustomScrollView(
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
            const HomePostWidget(),
          ],
        ),
      ),
    );
  }
}
