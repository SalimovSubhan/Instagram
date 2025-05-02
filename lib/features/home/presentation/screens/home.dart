import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/home/presentation/screens/chats_screen.dart';
import 'package:instagramultra/features/home/presentation/screens/home_screen.dart';

class Home extends HookConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        physics: const PageScrollPhysics(),
        children: const [
          HomeScreen(),
          ChatsScreen(),
        ],
      ),
    );
  }
}
