import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/home/business/entities/comment_entities.dart';
import 'package:instagramultra/features/home/presentation/providers/add_comment_provider.dart';
import 'package:instagramultra/features/home/presentation/providers/delete_comment_provider.dart';
import 'package:instagramultra/features/home/presentation/providers/get_post_by_id_provider.dart';

class HomeCommentWidget extends HookConsumerWidget {
  final List<CommentEntities> comments;
  final int postId;
  final VoidCallback onCommentAdded;
  final VoidCallback onCommentDecrement;
  const HomeCommentWidget({
    super.key,
    required this.comments,
    required this.postId,
    required this.onCommentAdded,
    required this.onCommentDecrement,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final commetnController = useTextEditingController();
    final post = ref.watch(getPostByIdProvider(postId));

    useEffect(() {
      // ignore: unused_result
      ref.refresh(getPostByIdProvider(postId));
      return null;
    }, []);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Коментарии',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              post.when(
                data: (data) {
                  if (data.comments == null || data.comments!.isEmpty) {
                    return const Padding(
                      padding: EdgeInsets.only(top: 150),
                      child: Center(child: Text('Пока нет коментов')),
                    );
                  }
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      CommentEntities? comment = data.comments?[index];
                      return GestureDetector(
                        onLongPress: () async {
                          await ref
                              .read(deleteCommentProvider.notifier)
                              .deleteComment(
                                  commentId: comment!.postCommentId!);
                          onCommentDecrement();
                          // ignore: unused_result
                          ref.refresh(getPostByIdProvider(postId));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 232, 229, 229),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: NetworkImage(comment?.userImage !=
                                            null
                                        ? 'https://instagram-api.softclub.tj/images/${comment?.userImage}'
                                        : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3r8NVoEX5mtT_ko24SieILHQ9wemn2y5h3Q&s'),
                                  ),
                                ),
                                child: ClipOval(
                                  child: CachedNetworkImage(
                                    imageUrl: comment?.userImage != null
                                        ? 'https://instagram-api.softclub.tj/images/${comment?.userImage}'
                                        : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3r8NVoEX5mtT_ko24SieILHQ9wemn2y5h3Q&s',
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '${comment?.userName}',
                                        maxLines: 1,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            overflow: TextOverflow.ellipsis),
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        '${comment?.dateCommented?.split('T').first}',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 2),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    child: Text(
                                      '${comment?.comment}',
                                      maxLines: 3,
                                      style: const TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'Ответить',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300),
                                  )
                                ],
                              ),
                              const Spacer(),
                              const Column(
                                children: [
                                  Icon(
                                    Icons.favorite_border,
                                    size: 20,
                                  ),
                                  Text('8'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: data.comments?.length,
                  );
                },
                error: (error, stackTrace) => const Text('Чтото пошло нетак'),
                loading: () => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 60,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  color: Colors.purple,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 5),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                height: 40,
                child: TextField(
                  controller: commetnController,
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(fontWeight: FontWeight.w300),
                    hintText: 'Что вы об этом думаете?',
                    border: InputBorder.none,
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () async {
                  if (commetnController.text.isNotEmpty) {
                    await ref.read(addCommentProvider.notifier).addComment(
                        comment: commetnController.text, postId: postId);
                    commetnController.clear();
                    onCommentAdded();
                    // ignore: unused_result
                    ref.refresh(getPostByIdProvider(postId));
                  }
                },
                child: const Icon(Icons.send, size: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
