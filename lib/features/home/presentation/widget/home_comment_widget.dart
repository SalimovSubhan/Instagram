import 'package:flutter/material.dart';

class HomeCommentWidget extends StatefulWidget {
  const HomeCommentWidget({super.key});

  @override
  State<HomeCommentWidget> createState() => _HomeCommentWidgetState();
}

class _HomeCommentWidgetState extends State<HomeCommentWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Коментарии",
              style: TextStyle(),
            ),
          ],
        )
      ],
    );
  }
}
