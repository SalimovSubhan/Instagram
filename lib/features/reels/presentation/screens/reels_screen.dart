import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ReelsScreen extends HookConsumerWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController();

    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        scrollDirection: Axis.vertical,
        itemCount: 10, 
        itemBuilder: (context, index) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Container(
                color: Colors.black,
                child: Center(
                  child: Text(
                    'Reel ${index + 1}',
                    style: const TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
              Positioned(
                bottom: 80,
                right: 20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.favorite_border, color: Colors.white, size: 30),
                      onPressed: () {
                      },
                    ),
                    const SizedBox(height: 20),
                    IconButton(
                      icon: const Icon(Icons.comment, color: Colors.white, size: 30),
                      onPressed: () {
                      },
                    ),
                    const SizedBox(height: 20),
                    IconButton(
                      icon: const Icon(Icons.share, color: Colors.white, size: 30),
                      onPressed: () {
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
