import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:instagramultra/features/home/business/entities/post_entities.dart';
import 'package:instagramultra/features/home/presentation/providers/add_post_favorite_provider.dart';
import 'package:instagramultra/features/home/presentation/providers/like_post_provider.dart';
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
                                border:
                                    Border.all(width: 2, color: Colors.pink),
                                color: const Color.fromARGB(255, 241, 238, 238),
                                shape: BoxShape.circle,
                              ),
                              child: ClipOval(
                                child: CachedNetworkImage(
                                  imageUrl: item.userImage != null &&
                                          item.userImage!.isNotEmpty
                                      ? 'https://instagram-api.softclub.tj/images/${item.userImage}'
                                      : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3r8NVoEX5mtT_ko24SieILHQ9wemn2y5h3Q&s',
                                  fit: BoxFit.cover,
                                ),
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
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white38,
                ),
                child: item.images?[0].split('.').last == 'png' ||
                        item.images?[0].split('.').last == 'jpg'
                    ? AspectRatio(
                        aspectRatio: 1,
                        child: CachedNetworkImage(
                            imageUrl:
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
                                  onPressed: () async {
                                    await ref
                                        .read(likePostProvider.notifier)
                                        .likePost(postId: item.postId);
                                    item.postLike = !item.postLike;
                                    if (item.postLike) {
                                      item.postLikeCount =
                                          (item.postLikeCount!) + 1;
                                    } else {
                                      item.postLikeCount =
                                          (item.postLikeCount!) - 1;
                                    }
                                    pagingController.itemList =
                                        List.from(pagingController.itemList!);
                                  },
                                  icon: Icon(
                                    item.postLike
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: item.postLike
                                        ? Colors.red
                                        : Colors.black,
                                  ),
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
                                          onCommentDecrement: () {
                                            item.commentCount =
                                                (item.commentCount) - 1;
                                            pagingController.itemList =
                                                List.from(
                                                    pagingController.itemList!);
                                          },
                                          onCommentAdded: () {
                                            item.commentCount =
                                                (item.commentCount) + 1;
                                            pagingController.itemList =
                                                List.from(
                                                    pagingController.itemList!);
                                          },
                                          postId: item.postId,
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
                          onPressed: () async {
                            await ref
                                .read(likePostFavoriteProvider.notifier)
                                .likePostFavorite(postId: item.postId);
                            item.postFavorite = !item.postFavorite;
                            pagingController.itemList =
                                List.from(pagingController.itemList!);
                          },
                          icon: Icon(
                            item.postFavorite
                                ? Icons.turned_in
                                : Icons.turned_in_not,
                          ),
                        ),
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
        firstPageErrorIndicatorBuilder: (context) =>
            const Center(child: Text('Чтото пошло нетак')),
        newPageErrorIndicatorBuilder: (context) =>
            const Center(child: Text('Чтото пошло нетак')),
      ),
    );
  }
}
