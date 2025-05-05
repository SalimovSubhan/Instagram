import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/home/business/entities/chats_entities.dart';
import 'package:instagramultra/features/home/presentation/providers/get_chats_provider.dart';
import 'package:instagramultra/features/home/presentation/screens/chats_screen.dart';
import 'package:instagramultra/features/home/presentation/screens/home_screen.dart';

class Home extends HookConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listOfChats = useState<List<ChatsEntities>>([]);

    ref.listen(
      getChatsProvider,
      (previous, next) {
        next.whenData(
          (value) {
            listOfChats.value = value;
          },
        );
      },
    );

    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        physics: const PageScrollPhysics(),
        children: [
          const HomeScreen(),
          ChatsScreen(
            listChats: listOfChats.value,
          ),
        ],
      ),
    );
  }
}
