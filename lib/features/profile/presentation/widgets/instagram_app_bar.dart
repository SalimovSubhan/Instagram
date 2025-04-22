import 'package:flutter/material.dart';
 
class InstagramAppBar extends StatelessWidget {
  final String userName;

  const InstagramAppBar({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      floating: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(Icons.lock),
              Text(userName)
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
            ),
          )
        ],
      ),
    );
  }
}
