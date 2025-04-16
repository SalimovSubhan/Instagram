import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          leading: const Row(
            children: [
              Icon(Icons.lock),
              Text('NickName'),
              Icon(Icons.arrow_downward)
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.abc)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.abc)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.abc)),
          ],
        ),
      ],
    );
  }
}
