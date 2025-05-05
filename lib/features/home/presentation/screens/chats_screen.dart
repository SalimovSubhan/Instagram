import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/home/business/entities/chats_entities.dart';
import 'package:instagramultra/features/home/presentation/providers/get_chats_provider.dart';
import 'package:instagramultra/features/home/presentation/widgets/chats_appbar_widget.dart';
import 'package:instagramultra/features/home/presentation/widgets/chats_chats_widget.dart'
    show ChatsChatsWidget;
import 'package:instagramultra/features/home/presentation/widgets/chats_circule_widget.dart';
import 'package:instagramultra/features/home/presentation/widgets/chats_search_widget.dart';

class ChatsScreen extends HookConsumerWidget {
  const ChatsScreen({super.key, required this.listChats});

  final List<ChatsEntities> listChats;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chats = ref.watch(getChatsProvider.future);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ChatsSearchWidget(),
            const SizedBox(height: 10),
            ChatsCirculeWidget(
              listChats: listChats,
            ),
            ChatsChatsWidget(
              listChats: listChats,
            ),
          ],
        ),
      ),
    );
  }
}
