import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileInfoWidget extends StatelessWidget {
  const ProfileInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              CircleAvatar(radius: 40),
              Text('BIO'),
            ],
          ),
          Row(
            children: [
              Column(children: [Text('54'), Text('Posts')]),
              Gap(40),
              Column(children: [Text('54'), Text('Posts')]),
              Gap(40),
              Column(children: [Text('54'), Text('Posts')])
            ],
          )
        ],
      ),
    );
  }
}
