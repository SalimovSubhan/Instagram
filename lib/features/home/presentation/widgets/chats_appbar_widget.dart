import 'package:flutter/material.dart';

PreferredSizeWidget appBar() {
  return AppBar(
    surfaceTintColor: Colors.white,
    backgroundColor: Colors.white,
    leading: const Icon(Icons.arrow_back_outlined),
    title: const Row(
      children: [
        Text(
          'kubutt.37',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Icon(Icons.keyboard_arrow_down)
      ],
    ),
    actions: const [Icon(Icons.save_alt_rounded), SizedBox(width: 15)],
  );
}
