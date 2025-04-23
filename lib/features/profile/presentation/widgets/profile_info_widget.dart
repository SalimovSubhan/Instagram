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
          Column(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    'https://instagram-api.softclub.tj/images/${profileInfo.image}'),
              ),
              Text('${profileInfo.about}'),
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
                Text(profileInfo.subscribersCount.toString()),
                const Text('Posts')
              ]),
              const Gap(40),
              Column(children: [
                Text(profileInfo.subscriptionsCount.toString()),
                const Text('Posts')
              ])
            ],
          )
        ],
      ),
    );
  }
}
