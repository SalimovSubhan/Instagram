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
    // ignore: unused_local_variable
    final followers = ref.watch(getFollowersInfoProivder(myId));
    useEffect(() {
      ref.read(getFollowersInfoProivder(myId).notifier).getFollowers();
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
            ListView.separated(
                itemBuilder: (context, index) => Container(
                      height: 100,
                      color: Colors.amber,
                    ),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10), 
                itemCount: 10),
            Container(
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
