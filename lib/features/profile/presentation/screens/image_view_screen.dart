import 'dart:ui';

import 'package:flutter/material.dart';

class ImageViewScreen extends StatelessWidget {
  final String image;

  const ImageViewScreen({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover)),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 100,
              sigmaY: 100,
            ),
            child: Container(),
          ),
          Center(
            child: Hero(
              tag: 'profile_image',
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(image),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
