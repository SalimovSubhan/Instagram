import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/home/data/models/post_dto.dart';

final postsProvider = StateProvider<Set<PostDto>>((ref) => {});
final pageProvider = StateProvider<int>((ref) => 1);
final lastPageProvider = StateProvider<int>((ref) => 0);
final isLoadingProvider = StateProvider<bool>((ref) => false);
final scrolControllerProvider = Provider((ref) => ScrollController());
