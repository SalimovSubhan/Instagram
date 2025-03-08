import 'package:flutter/material.dart';
import 'package:instagramultra/features/home/presentation/widget/home_appbar_widget.dart';
import 'package:instagramultra/features/home/presentation/widget/home_comment_widget.dart';
import 'package:instagramultra/features/home/presentation/widget/home_stories_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RefreshIndicator(
        onRefresh: () async {},
        child: Scaffold(
          body: CustomScrollView(
            slivers: [
              HomeAppbarWidget(),
              HomeStoriesWidget(),
              SliverList.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3r8NVoEX5mtT_ko24SieILHQ9wemn2y5h3Q&s"),
                                          fit: BoxFit.fill,
                                        ),
                                        border: Border.all(
                                            width: 2, color: Colors.pink),
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap: () async {},
                                    child: Text(
                                      "userName",
                                      style:
                                          const TextStyle(color: Colors.black),
                                    ),
                                  )
                                ],
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.more_vert))
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                            color: Colors.white38,
                            width: double.infinity,
                            child: SizedBox(
                              width: double.infinity,
                              height: 350,
                              child: const Center(
                                child: CircularProgressIndicator(),
                              ),
                            )),
                      ),
                      Container(
                        width: double.infinity,
                        height: 130,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon:
                                            const Icon(Icons.favorite_border)),
                                    IconButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                            showDragHandle: true,
                                            context: context,
                                            builder: (context) {
                                              return HomeCommentWidget();
                                            },
                                          );
                                        },
                                        icon:
                                            const Icon(Icons.comment_outlined)),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.send)),
                                  ],
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon:
                                        const Icon(Icons.turned_in_not_sharp)),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    child: Text(
                                      "userName",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text("title")
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  Text(
                                    "datePublished",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w300),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    child: const Text(
                                      "Показать перевод",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  );
                },
                itemCount: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
