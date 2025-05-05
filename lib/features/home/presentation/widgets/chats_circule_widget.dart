import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/core/utils/get_stories.dart';
import 'package:instagramultra/features/home/business/entities/chats_entities.dart';

class ChatsCirculeWidget extends HookConsumerWidget {
  const ChatsCirculeWidget({super.key, required this.listChats});

  final List<ChatsEntities> listChats;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.white,
      height: 115,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final chat = listChats[index];

            final name = myId == chat.sendUserId
                ? '${chat.receiveUserName}'
                : '${chat.sendUserName}';

            final userImage = myId == chat.sendUserId
                ? chat.receiveUserImage != null && chat.receiveUserImage != ''
                    ? 'https://instagram-api.softclub.tj/images/${chat.receiveUserImage ?? ''}'
                    : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3r8NVoEX5mtT_ko24SieILHQ9wemn2y5h3Q&s'
                : chat.sendUserImage != null && chat.sendUserImage != ''
                    ? 'https://instagram-api.softclub.tj/images/${chat.sendUserImage ?? ''}'
                    : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3r8NVoEX5mtT_ko24SieILHQ9wemn2y5h3Q&s';

            return Padding(
              padding: EdgeInsets.only(left: index == 0 ? 15 : 0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.blue,
                    child: ClipOval(
                        child: CachedNetworkImage(imageUrl: userImage)),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    child: Text(
                      name,
                      maxLines: 1,
                      style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: Color.fromARGB(255, 114, 112, 112),
                          fontSize: 13),
                    ),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
                width: 8,
              ),
          itemCount: listChats.length),
    );
  }
}
