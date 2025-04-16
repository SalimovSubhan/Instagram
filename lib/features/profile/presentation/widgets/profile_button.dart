import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.black),
            onPressed: () {},
            child: const Text('Edit Profile')));
  }
}
