import 'package:flutter/material.dart';
import 'package:social_media_app/data/data.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          pinned: true,
          centerTitle: true,
          title: Text(
            'Social App',
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                allUsers[index].profileimage!,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  allUsers[index].name,
                                  style: const TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                const Text(
                                  'Goa',
                                )
                              ],
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.more_vert_outlined,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      child: Image.network(
                        allUsers[index].post![0].postImages!,
                        fit: BoxFit.cover,
                      ),
                      height: 500,
                      width: MediaQuery.of(context).size.width,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.favorite_border,
                              size: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.comment_outlined,
                              size: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.send_outlined,
                              size: 30,
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.download_outlined,
                              size: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.bookmark_border_outlined,
                              size: 30,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              );
            },
            childCount: allUsers.length,
          ),
        )
      ],
    );
  }
}
