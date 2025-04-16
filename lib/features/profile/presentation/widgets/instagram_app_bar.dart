import 'package:flutter/material.dart';

class InstagramAppBar extends StatelessWidget {
  const InstagramAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      floating: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [Icon(Icons.lock), Text('NickName')],
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
