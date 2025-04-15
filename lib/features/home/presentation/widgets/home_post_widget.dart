import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/home/business/entities/post_entities.dart';
import 'package:instagramultra/features/home/presentation/providers/get_post_provider.dart';
import 'package:instagramultra/features/home/presentation/providers/scroll_controller_provider.dart';
import 'package:instagramultra/features/home/presentation/widgets/home_comment_widget.dart';

class HomePostWidget extends HookConsumerWidget {
  const HomePostWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = useState<Set<PostEntities>>({});
    final scrolController = ref.watch(scrolControllerProvider);
    final postState = ref.watch(getPostProvider(1));
    final page = useState<int>(1);
    final lastPage = useState<int>(0);
    final isLoading = useState(false);

    bool pageLessThanLastPage() =>
        page.value == 1 || page.value <= lastPage.value;

    void scrolListener() async {
      if (scrolController.position.pixels >=
              scrolController.position.maxScrollExtent - 50 &&
          pageLessThanLastPage() &&
          isLoading.value == false) {
        try {
          isLoading.value = true;
          final result = await ref.refresh(getPostProvider(page.value).future);
          posts.value.addAll(result.data);
          if (lastPage.value == 0) {
            lastPage.value = result.totalPage;
          }
          page.value++;
          print(posts.value);
          isLoading.value = false;
        } catch (e) {
          print(e);
        }
      }
    }

    useEffect(() {
      scrolController.addListener(scrolListener);
      return () {
        scrolController.removeListener(scrolListener);
      };
    }, [scrolController]);

    return SliverToBoxAdapter(
      child: postState.when(
        data: (data) {
          posts.value.addAll(data.data);
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                if (posts.value.length == index) {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(
                      backgroundColor: Colors.blue,
                    ),
                  );
                }
                final PostEntities post = posts.value.toList()[index];

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
                                        image: NetworkImage(post.userImage !=
                                                null
                                            ? 'https://instagram-api.softclub.tj/images/${post.userImage}'
                                            : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3r8NVoEX5mtT_ko24SieILHQ9wemn2y5h3Q&s'),
                                        fit: BoxFit.fill,
                                      ),
                                      border: Border.all(
                                          width: 2, color: Colors.pink),
                                      color: const Color.fromARGB(
                                          255, 241, 238, 238),
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
                                    '${post.userName}',
                                    style: const TextStyle(color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_vert))
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          color: Colors.white38,
                          width: double.infinity,
                          child: const SizedBox(
                            width: double.infinity,
                            height: 350,
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          )),
                    ),
                    Container(
                      width: double.infinity,
                      height: 130,
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
                                      Text('${post.postLikeCount}'),
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
                                                comments: post.comments!,
                                              );
                                            },
                                          );
                                        },
                                        icon:
                                            const Icon(Icons.comment_outlined),
                                      ),
                                      Text('${post.commentCount}'),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.send),
                                      ),
                                      Text('${post.postView}'),
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
                                    '${post.userName}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(post.title ?? 'N/b')
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
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
              itemCount: posts.value.length + (isLoading.value ? 1 : 0));
        },
        error: (error, stackTrace) {
          return Center(
            child: Text('$error'),
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        },
      ),
    );
  }
}
