import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/profile/presentation/providers/followers_provider.dart';
import 'package:instagramultra/features/profile/presentation/providers/follows_provider.dart';
import 'package:instagramultra/features/profile/presentation/providers/is_follower_provider.dart';
import 'package:instagramultra/features/profile/presentation/widgets/follow_relatioship_view.dart';

class FollowScreen extends HookConsumerWidget {
  final int intialIndex;
  final String myId;

  const FollowScreen(
      {super.key, required this.intialIndex, required this.myId});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: unused_local_variable
    final followers = ref.watch(getFollowersInfoProvider(myId));
    final follows = ref.watch(getFollowsInfoProvider(myId));
    useEffect(() {
      Future.microtask(() {
        ref.invalidate(getFollowersInfoProvider(myId));
        ref.invalidate(getFollowsInfoProvider(myId));
        ref.invalidate(isFolloweProvider);
        ref.read(getFollowersInfoProvider(myId).notifier).getFollowers();
        ref.read(getFollowsInfoProvider(myId).notifier).getFollows();
      });
      return null;
    }, []);
    return DefaultTabController(
      length: 2,
      initialIndex: intialIndex,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Followers'),
              Tab(text: 'Follows'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            followers.when(
              data: (data) => RefreshIndicator.adaptive(
                onRefresh: () async {
                  ref.invalidate(getFollowersInfoProvider(myId));
                  ref.invalidate(getFollowsInfoProvider(myId));
                  ref.invalidate(isFolloweProvider);
                },
                child: FollowRelatioshipView(
                  followData: data,
                ),
              ),
              error: (error, stackTrace) => const Center(
                child: Text('Some Error Has Ocured'),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
            follows.when(
              data: (data) => RefreshIndicator.adaptive(
                onRefresh: () async {
                  ref.invalidate(getFollowersInfoProvider(myId));
                  ref.invalidate(getFollowsInfoProvider(myId));
                  ref.invalidate(isFolloweProvider);
                },
                child: FollowRelatioshipView(
                  followData: data,
                ),
              ),
              error: (error, stackTrace) => const Center(
                child: Text('Some Error Has Ocured'),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
