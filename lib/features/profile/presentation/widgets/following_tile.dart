import 'package:flutter/material.dart';
import 'package:instagramultra/features/profile/business/entities/follow_entity.dart';

class FollowingTile extends StatelessWidget {
  final FollowEntity followInfo;
  const FollowingTile({super.key, required this.followInfo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                'https://instagram-api.softclub.tj/images/${followInfo.userShortInfo.userPhoto}'),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(followInfo.userShortInfo.userName,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(followInfo.userShortInfo.fullName,
                    style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            child: const Text(
              'Follow',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
