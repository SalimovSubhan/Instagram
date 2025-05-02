import 'package:flutter/material.dart';

class FollowButton extends StatelessWidget {
  final void Function() onPressed;

  const FollowButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
      ),
      child: const Text(
        'Follow',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
