import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/profile/business/entities/follow_entity.dart';
import 'package:instagramultra/features/profile/presentation/providers/follow_user_by_id_provider.dart';
import 'package:instagramultra/features/profile/presentation/providers/is_follower_provider.dart';
import 'package:instagramultra/features/profile/presentation/providers/un_follow_user_by_id_provider.dart';
import 'package:instagramultra/features/profile/presentation/widgets/follow_button.dart';
import 'package:instagramultra/features/profile/presentation/widgets/un_follow_button.dart';

class FollowerTile extends HookConsumerWidget {
  final FollowEntity followerInfo;
  const FollowerTile({super.key, required this.followerInfo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFollowed =
        ref.watch(isFolloweProvider(followerInfo.userShortInfo.userId));

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                'https://instagram-api.softclub.tj/images/${followerInfo.userShortInfo.userPhoto}'),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(followerInfo.userShortInfo.userName,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(followerInfo.userShortInfo.fullName,
                    style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          isFollowed.when(
            error: (error, stackTrace) => const Text(''),
            loading: () => const CircularProgressIndicator.adaptive(),
            data: (data) => data
                ? UnFollowButton(
                    onPressed: () {
                      ref
                          .read(unFollowUserByIdProvider.notifier)
                          .unFollowUserById(
                              userId: followerInfo.userShortInfo.userId);
                      ref.invalidate(isFolloweProvider);
                    },
                  )
                : FollowButton(
                    onPressed: () {
                      ref.read(followUserByIdProvider.notifier).followUserById(
                          userId: followerInfo.userShortInfo.userId);
                      ref.invalidate(isFolloweProvider);
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
