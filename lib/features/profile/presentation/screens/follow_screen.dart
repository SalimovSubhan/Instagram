import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FollowScreen extends HookConsumerWidget {
  final int intialIndex;

  const FollowScreen({super.key, required this.intialIndex});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 2,
      initialIndex: intialIndex,
      child: Scaffold(
        appBar: AppBar(),
        body: const Column(
          children: [
            TabBarView(
              children: [
                Tab(text: 'Followers'),
                Tab(text: 'Follows'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
