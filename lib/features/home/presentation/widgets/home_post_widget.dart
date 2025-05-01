import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:instagramultra/features/home/business/entities/post_entities.dart';
import 'package:instagramultra/features/home/presentation/widgets/post_widget.dart';

class HomePostWidget extends HookConsumerWidget {
  final PagingController<int, PostEntities> pagingController;
  const HomePostWidget({super.key, required this.pagingController});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PagedSliverList<int, PostEntities>(
      pagingController: pagingController,
      builderDelegate: PagedChildBuilderDelegate(
        itemBuilder: (context, item, index) {
          return PostWidget(
            item: item,
            pagingController: pagingController,
          );
        },
        newPageProgressIndicatorBuilder: (context) => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
        firstPageErrorIndicatorBuilder: (context) =>
            const Center(child: Text('Чтото пошло нетак')),
        newPageErrorIndicatorBuilder: (context) =>
            const Center(child: Text('Чтото пошло нетак')),
      ),
    );
  }
}
