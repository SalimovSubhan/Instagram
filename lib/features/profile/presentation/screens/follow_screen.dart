import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/profile/business/entities/follow_entity.dart';
import 'package:instagramultra/features/profile/presentation/providers/followers_provider.dart';

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
            followers.when(
              data: (data) => FollowersView(
                followers: data,
              ),
              error: (error, stackTrace) => const Center(
                child: Text('Some Error Has Ocured'),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
            ),
            Container(
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}

class FollowersView extends StatelessWidget {
  final List<FollowEntity> followers;
  const FollowersView({super.key, required this.followers});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => FollowerTile(
              followerInfo: followers[index],
            ),
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemCount: followers.length);
  }
}

class FollowerTile extends StatelessWidget {
  final FollowEntity followerInfo;
  const FollowerTile({super.key, required this.followerInfo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                'https://instagram-api.softclub.tj/images/${followerInfo.userShortInfo.userPhoto}'),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(followerInfo.userShortInfo.userName,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(followerInfo.userShortInfo.fullName,
                    style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            child: const Text(
              'Follow',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
