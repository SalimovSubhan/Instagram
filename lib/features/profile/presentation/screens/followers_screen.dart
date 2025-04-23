import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FollowersScreen extends HookConsumerWidget {
  const FollowersScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          height: 20,
          color: Colors.amber,
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 10),
      ),
    );
  }
}
