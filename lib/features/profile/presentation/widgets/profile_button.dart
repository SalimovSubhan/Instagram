import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TextButton(
      onPressed: () {},
      child: const Text(
        'Edit Profile',
        style: TextStyle(color: Colors.white),
      ),
    ));
  }
}
