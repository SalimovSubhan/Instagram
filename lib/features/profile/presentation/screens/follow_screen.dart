import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/profile/presentation/providers/profile_info_provider.dart';

class FollowScreen extends HookConsumerWidget {
  final int intialIndex;
  final String myId;

  const FollowScreen(
      {super.key, required this.intialIndex, required this.myId});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final followers = ref.watch(getFollowersInfoProivder(myId));
    useEffect(() {
      ref.read(getFollowersInfoProivder(myId).notifier).getFollowers();
      return null;
    }, []);
    return DefaultTabController(
      length: 2,
      initialIndex: intialIndex,
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            const TabBar(
              tabs: [
                Tab(text: 'Followers'),
                Tab(text: 'Follows'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    color: Colors.black,
                  ),
                  Container(
                    color: Colors.amber,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
