import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:instagramultra/features/profile/business/entities/profile_info_entity.dart';

class ProfileInfoWidget extends StatelessWidget {
  final ProfileInfoEntity profileInfo;

  const ProfileInfoWidget({super.key, required this.profileInfo});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Column(
            children: [
              CircleAvatar(radius: 40),
              Text('BIO'),
            ],
          ),
          Row(
            children: [
              Column(children: [
                Text(profileInfo.postCount.toString()),
                const Text('Posts')
              ]),
              const Gap(40),
              Column(children: [
                Text(profileInfo.followerCount.toString()),
                const Text('Posts')
              ]),
              const Gap(40),
              Column(children: [
                Text(profileInfo.followingCount.toString()),
                const Text('Posts')
              ])
            ],
          )
        ],
      ),
    );
  }
}
