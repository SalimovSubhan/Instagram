import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/home/presentation/widgets/chats_appbar_widget.dart';
import 'package:instagramultra/features/home/presentation/widgets/chats_chats_widget.dart'
    show ChatsChatsWidget;
import 'package:instagramultra/features/home/presentation/widgets/chats_circule_widget.dart';
import 'package:instagramultra/features/home/presentation/widgets/chats_search_widget.dart';

class ChatsScreen extends HookConsumerWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ChatsSearchWidget(),
            SizedBox(height: 10),
            ChatsCirculeWidget(),
            ChatsChatsWidget(),
          ],
        ),
      ),
    );
  }
}
