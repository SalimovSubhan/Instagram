import 'package:flutter/material.dart';

class HomeStoriesWidget extends StatefulWidget {
  const HomeStoriesWidget({super.key});

  @override
  State<HomeStoriesWidget> createState() => _HomeStoriesWidgetState();
}

class _HomeStoriesWidgetState extends State<HomeStoriesWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: Colors.white,
        height: 115,
        child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return index == 0
                  ? Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Stack(children: [
                            CircleAvatar(
                              radius: 46,
                              backgroundColor: Colors.red,
                              child: CircleAvatar(
                                radius: 42,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 38,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 1,
                              right: 7,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 13,
                                child: Container(
                                    width: 20,
                                    height: 20,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black),
                                    child: Icon(
                                      size: 18,
                                      Icons.add,
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                          ]),
                          SizedBox(
                            width: 100,
                            child: Text(
                              "Ваша история",
                              maxLines: 1,
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color:
                                      const Color.fromARGB(255, 114, 112, 112),
                                  fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Column(
                      children: [
                        CircleAvatar(
                          radius: 46,
                          backgroundColor: Colors.red,
                          child: CircleAvatar(
                            radius: 42,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 38,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: Text(
                            "Ваша история",
                            maxLines: 1,
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: const Color.fromARGB(255, 114, 112, 112),
                                fontSize: 13),
                          ),
                        ),
                      ],
                    );
            },
            separatorBuilder: (context, index) => SizedBox(
                  width: 8,
                ),
            itemCount: 20),
      ),
    );
  }
}
