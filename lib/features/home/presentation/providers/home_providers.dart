import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:instagramultra/features/home/business/entities/post_entities.dart';

final postsProvider = StateProvider<Set<PostEntities>>((ref) => {});
final pageProvider = StateProvider<int>((ref) => 1);
final lastPageProvider = StateProvider<int>((ref) => 0);
final isLoadingProvider = StateProvider<bool>((ref) => false);
final scrolControllerProvider = Provider((ref) => ScrollController());
final pagingControllerProvider = Provider((ref) {
  final controller = PagingController<int, PostEntities>(firstPageKey: 1);
  ref.onDispose(() => controller.dispose());
  return controller;
});
