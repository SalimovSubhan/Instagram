import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:instagramultra/features/home/business/entities/post_entities.dart';
import 'package:instagramultra/features/home/presentation/widgets/home_comment_widget.dart';
import 'package:instagramultra/features/home/presentation/widgets/video_player_widget.dart';

class HomePostWidget extends HookConsumerWidget {
  final PagingController<int, PostEntities> pagingController;
  const HomePostWidget({super.key, required this.pagingController});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PagedSliverList<int, PostEntities>(
        pagingController: pagingController,
        builderDelegate: PagedChildBuilderDelegate(
          itemBuilder: (context, item, index) {
            return Column(
              children: [
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(item.userImage !=
                                                null &&
                                            item.userImage!.isNotEmpty
                                        ? 'https://instagram-api.softclub.tj/images/${item.userImage}'
                                        : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3r8NVoEX5mtT_ko24SieILHQ9wemn2y5h3Q&s'),
                                    fit: BoxFit.fill,
                                  ),
                                  border:
                                      Border.all(width: 2, color: Colors.pink),
                                  color:
                                      const Color.fromARGB(255, 241, 238, 238),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () async {},
                              child: Text(
                                '${item.userName}',
                                style: const TextStyle(color: Colors.black),
                              ),
                            )
                          ],
                        ),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.more_vert))
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white38,
                    ),
                    child: item.images?[0].split('.').last == 'png' ||
                            item.images?[0].split('.').last == 'jpg'
                        ? AspectRatio(
                            aspectRatio: 1,
                            child: Image.network(
                                'https://instagram-api.softclub.tj/images/${item.images?[0]}'),
                          )
                        : AspectRatio(
                            aspectRatio: 1,
                            child: VideoPlayerWidget(
                              url:
                                  'https://instagram-api.softclub.tj/images/${item.images?.first}',
                            ),
                          ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(bottom: 10),
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.favorite_border),
                                  ),
                                  Text('${item.postLikeCount}'),
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      showModalBottomSheet(
                                        showDragHandle: true,
                                        context: context,
                                        builder: (context) {
                                          return HomeCommentWidget(
                                            comments: item.comments!,
                                          );
                                        },
                                      );
                                    },
                                    icon: const Icon(Icons.comment_outlined),
                                  ),
                                  Text('${item.commentCount}'),
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.send),
                                  ),
                                  Text('${item.postView}'),
                                ],
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.turned_in_not_sharp)),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            GestureDetector(
                              child: Text(
                                '${item.userName}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(item.title ?? 'N/b')
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            const Text(
                              'datePublished',
                              style: TextStyle(fontWeight: FontWeight.w300),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              child: const Text(
                                'Показать перевод',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            );
          },
          newPageProgressIndicatorBuilder: (context) => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        ));
  }
}
