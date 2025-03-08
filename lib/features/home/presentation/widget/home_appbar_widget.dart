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
      floating: true,
      backgroundColor: Colors.white,
      leadingWidth: 140,
      leading: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        width: 100,
        height: 15,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/Instagram Logo.png'),
                fit: BoxFit.fitWidth)),
      ),
      actions: [
        IconButton(
            onPressed: () {}, icon: Icon(Icons.favorite_border_outlined)),
        IconButton(onPressed: () {}, icon: Icon(Icons.maps_ugc_outlined)),
      ],
    );
  }
}
