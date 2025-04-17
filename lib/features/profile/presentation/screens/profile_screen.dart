import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/profile/presentation/providers/profile_prodiver.dart';
import 'package:instagramultra/features/profile/presentation/widgets/instagram_app_bar.dart';
import 'package:instagramultra/features/profile/presentation/widgets/profile_button.dart';
import 'package:instagramultra/features/profile/presentation/widgets/profile_info_widget.dart';

class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      ref.read(getProfileInfoProvider);
    }, []);
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const InstagramAppBar(),
            const ProfileInfoWidget(),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
        ),
      ),
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
        tabs: [
          Tab(child: Icon(Icons.local_post_office)),
          Tab(child: Icon(Icons.video_call))
        ],
      ),
    );
  }
}
