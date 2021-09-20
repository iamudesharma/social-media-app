import 'package:flutter/material.dart';
import 'package:social_media_app/data/data.dart';
// import 'package:social_media_app/helpers/helpers.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          centerTitle: true,
          title: Text(
            'Social App',
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container();
            },
            childCount: allUsers.length,
          ),
        )
      ],
    );
  }
}
