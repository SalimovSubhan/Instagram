import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatsCirculeWidget extends HookConsumerWidget {
  const ChatsCirculeWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.white,
      height: 115,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(left: index == 0 ? 15 : 0),
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 46,
                    backgroundColor: Colors.blue,
                  ),
                  SizedBox(
                    width: 100,
                    child: Text(
                      'Ваша заметка',
                      maxLines: 1,
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: Color.fromARGB(255, 114, 112, 112),
                          fontSize: 13),
                    ),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
                width: 8,
              ),
          itemCount: 20),
    );
  }
}
