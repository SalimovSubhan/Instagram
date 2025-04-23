import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:instagramultra/features/profile/business/entities/profile_info_entity.dart';
import 'package:instagramultra/features/profile/presentation/screens/image_view_screen.dart';

class ProfileInfo extends StatelessWidget {
  final ProfileInfoEntity profileInfo;

  const ProfileInfo({super.key, required this.profileInfo});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              GestureDetector(
                onLongPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageViewScreen(
                            image:
                                'https://instagram-api.softclub.tj/images/${profileInfo.image}'),
                      ));
                },
                child: Hero(
                  createRectTween: (begin, end) =>
                      RectTween(begin: begin, end: end),
                  transitionOnUserGestures: false,
                  tag: 'profile_image',
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'https://instagram-api.softclub.tj/images/${profileInfo.image}'),
                  ),
                ),
              ),
              Text('${profileInfo.about}'),
            ],
          ),
          Row(
            children: [
              ProfileInfoItem(
                infoCount: profileInfo.postCount ?? 0,
                title: 'Posts',
                onTap: () {},
              ),
              const Gap(35),
              ProfileInfoItem(
                infoCount: profileInfo.subscribersCount ?? 0,
                title: 'Followers',
                onTap: () {},
              ),
              const Gap(35),
              ProfileInfoItem(
                infoCount: profileInfo.subscriptionsCount ?? 0,
                title: 'Follows',
                onTap: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}

class ProfileInfoItem extends StatelessWidget {
  final int infoCount;
  final String title;
  final void Function()? onTap;
  const ProfileInfoItem(
      {super.key,
      required this.infoCount,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(children: [
        Text(
          infoCount.toString(),
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        )
      ]),
    );
  }
}
