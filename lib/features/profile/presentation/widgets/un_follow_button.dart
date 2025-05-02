import 'package:flutter/material.dart';

class UnFollowButton extends StatelessWidget {
  final void Function() onPressed;

  const UnFollowButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
      ),
      child: const Text(
        'UnFollow',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
