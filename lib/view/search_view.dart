import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_page/search_page.dart';
import 'package:social_media_app/data/data.dart';
import 'package:social_media_app/data/models/user_model.dart';
import 'package:social_media_app/view/user_profile_view.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  static List<Person> people = [
    Person('Mike', 'Barron', 64),
    Person('Todd', 'Black', 30),
    Person('Ahmad', 'Edwards', 55),
    Person('Anthony', 'Johnson', 67),
    Person('Annette', 'Brooks', 39),
  ];

  @override
  void initState() {
    super.initState();
  }

  // show() {
  //   return showSearch(
  //       context: context,
  //       delegate: SearchPage<User>(
  //         onQueryUpdate: (s) => print(s),
  //         items: allUsers,
  //         searchLabel: 'Search Users',
  //         suggestion: const Center(
  //           child: Text('Filter people by name, surname or age'),
  //         ),
  //         failure: const Center(
  //           child: Text('No User found (::)'),
  //         ),
  //         filter: (user) => [
  //           user.name,
  //           user.username,
  //           // person.age.toString(),
  //         ],
  //         builder: (user) => ListTile(
  //           leading: CircleAvatar(
  //             backgroundImage: NetworkImage(
  //               user.profileimage!,
  //             ),
  //           ),
  //           title: Text(user.username),
  //           subtitle: Text(
  //             user.name,
  //           ),
  //           trailing: currentUser.name != user.name
  //               ? ElevatedButton(
  //                   onPressed: () {},
  //                   child: Text('Follow'),
  //                 )
  //               :const SizedBox(
  //                   width: 10,
  //                   height: 10,
  //                 ),
  //                 onTap: (){
  //                   currentUser.name != user.name?Get.to(()=>UserProfileView(currentUser: user)):null;
  //                 },
  //         ),
  //       ));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Users'),
        actions: [
          // GestureDetector(
          //   onTap: () {
          //     show();
          //   },
          //   child: const Icon(
          //     Icons.search,
          //   ),
          // ),
          // const SizedBox(
          //   width: 10,
          // ),
        ],
      ),
      body: Container(),
      // body: ListView.builder(
      //   itemCount: people.length,
      //   itemBuilder: (context, index) {
      //     final Person person = people[index];
      //     return ListTile(
      //       title: Text(person.name),
      //       subtitle: Text(person.surname),
      //       trailing: Text('${person.age} yo'),
      //     );
      //   },
      // ),
    );
  }
}

class Person {
  final String name, surname;
  final num age;

  Person(this.name, this.surname, this.age);
}
