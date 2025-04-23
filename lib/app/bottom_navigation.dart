import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/home/presentation/providers/home_providers.dart';
import 'package:instagramultra/features/home/presentation/screens/home_screen.dart';
import 'package:instagramultra/features/profile/presentation/screens/profile_screen.dart';

class BottomNavigation extends HookConsumerWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrolController = ref.watch(scrolControllerProvider);
    final index = useState<int>(0);
    final List<Widget> screens = [
      const HomeScreen(),
      const Scaffold(),
      const Scaffold(),
      const Scaffold(),
      const ProfileScreen(),
    ];
    return Scaffold(
      body: IndexedStack(
        index: index.value,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            if (value == index.value) {
              if (value == 0) {
                scrolController.animateTo(0,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut);
              }
            } else {
              index.value = value;
            }
          },
          currentIndex: index.value,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 30), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, size: 30), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outlined, size: 30), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined, size: 30),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.circle, size: 30), label: ''),
          ]),
    );
  }
}
