import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/core/utils/get_stories.dart';
import 'package:instagramultra/features/home/business/entities/chats_entities.dart';

class ChatsChatsWidget extends HookConsumerWidget {
  const ChatsChatsWidget({
    required this.listChats,
    super.key,
  });
  final List<ChatsEntities> listChats;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Сообщения',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              Text(
                'Запросы',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final chat = listChats[index];
              final userImage = myId == chat.sendUserId
                  ? chat.receiveUserImage != null && chat.receiveUserImage != ''
                      ? 'https://instagram-api.softclub.tj/images/${chat.receiveUserImage ?? ''}'
                      : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3r8NVoEX5mtT_ko24SieILHQ9wemn2y5h3Q&s'
                  : chat.sendUserImage != null && chat.sendUserImage != ''
                      ? 'https://instagram-api.softclub.tj/images/${chat.sendUserImage ?? ''}'
                      : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3r8NVoEX5mtT_ko24SieILHQ9wemn2y5h3Q&s';
              return Container(
                  width: double.infinity,
                  height: 70,
                  margin: const EdgeInsets.only(bottom: 10),
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: ClipOval(
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl: userImage,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              myId == chat.sendUserId
                                  ? '${chat.receiveUserName}'
                                  : '${chat.sendUserName}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'В сети 11 мин. назад',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.camera_alt_outlined,
                            color: Color.fromARGB(255, 112, 110, 110),
                            size: 30,
                          ))
                    ],
                  ));
            },
            itemCount: listChats.length,
          )
        ],
      ),
    );
  }
}
