import 'package:flutter/material.dart';
import 'package:instagramultra/features/home/presentation/home_screen.dart';

class BonnomNavigation extends StatefulWidget {
  const BonnomNavigation({super.key});

  @override
  State<BonnomNavigation> createState() => _BonnomNavigationState();
}

class _BonnomNavigationState extends State<BonnomNavigation> {
  int index = 0;
  final List<Widget> screens = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          currentIndex: index,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: [
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
