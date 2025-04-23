import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/profile/business/entities/profile_info_entity.dart';
import 'package:instagramultra/features/profile/presentation/providers/profile_info_provider.dart';
import 'package:instagramultra/features/profile/presentation/widgets/instagram_app_bar.dart';
import 'package:instagramultra/features/profile/presentation/widgets/profile_button.dart';
import 'package:instagramultra/features/profile/presentation/screens/profile_info.dart';
import 'package:shimmer/shimmer.dart';

class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileInfo = ref.watch(getProfileInfoProvider);
    useEffect(() {
      ref.read(getProfileInfoProvider.notifier).fetchProfileInfo();
      return null;
    }, []);
    return Theme(
      data: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Colors.black54,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            textStyle: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      child: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: RefreshIndicator.adaptive(
          color: Colors.black,
          backgroundColor: Colors.white,
          onRefresh: () async =>
              ref.read(getProfileInfoProvider.notifier).fetchProfileInfo(),
          child: Scaffold(
              backgroundColor: Colors.white,
              body: profileInfo.when(
                data: (data) {
                  return ProfileScrollView(
                    profileInfo: data,
                  );
                },
                error: (error, stackTrace) => const Center(
                  child: Text('WHat the father???'),
                ),
                loading: () => Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: Colors.black,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.amber,
                    )),
              )),
        ),
      ),
    );
  }
}

class ProfileScrollView extends ConsumerWidget {
  final ProfileInfoEntity profileInfo;

  const ProfileScrollView({super.key, required this.profileInfo});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      slivers: [
        InstagramAppBar(
          userName: profileInfo.userName.toString(),
        ),
        ProfileInfo(
          profileInfo: profileInfo,
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                const ProfileButton(),
                const Gap(10),
                const ProfileButton(),
                const Gap(10),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.contact_emergency)),
              ],
            ),
          ),
        ),
        const ProfileTabbar(),
        const ProfileTabbarView()
      ],
    );
  }
}

class ProfileTabbarView extends StatelessWidget {
  const ProfileTabbarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: TabBarView(children: [
          Container(color: Colors.amber),
          Container(color: Colors.amber),
        ]),
      ),
    );
  }
}

class ProfileTabbar extends StatelessWidget {
  const ProfileTabbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: TabBar(
        labelColor: Colors.black,
        indicatorColor: Colors.black,
        tabs: [
          Tab(child: Icon(Icons.local_post_office)),
          Tab(child: Icon(Icons.video_call))
        ],
      ),
    );
  }
}
