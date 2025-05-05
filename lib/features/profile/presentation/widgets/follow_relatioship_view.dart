import 'package:flutter/material.dart';
import 'package:instagramultra/features/profile/business/entities/follow_entity.dart';
import 'package:instagramultra/features/profile/presentation/widgets/follower_tile.dart';

class FollowRelatioshipView extends StatelessWidget {
  final List<FollowEntity> followData;
  const FollowRelatioshipView({super.key, required this.followData});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => FollowerTile(
              followerInfo: followData[index],
            ),
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemCount: followData.length);
  }
}
