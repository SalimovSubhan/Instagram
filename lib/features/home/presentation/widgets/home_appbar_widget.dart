import 'package:flutter/material.dart';

class HomeAppbarWidget extends StatefulWidget {
  const HomeAppbarWidget({super.key});

  @override
  State<HomeAppbarWidget> createState() => _HomeAppbarWidgetState();
}

class _HomeAppbarWidgetState extends State<HomeAppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      surfaceTintColor: Colors.white,
      floating: true,
      backgroundColor: Colors.white,
      leadingWidth: 140,
      leading: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: 100,
        height: 15,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Instagram Logo.png'),
                fit: BoxFit.fitWidth)),
      ),
      actions: [
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.favorite_border_outlined)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.maps_ugc_outlined)),
      ],
    );
  }
}
