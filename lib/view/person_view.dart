import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_app/controller/auth/create_new_account_controller.dart';
import 'package:social_media_app/controller/firebase_controller.dart/firebase_controller.dart';
import 'package:social_media_app/data/models/user_model.dart';

class PersonView extends StatefulWidget {
  const PersonView({Key? key}) : super(key: key);

  @override
  State<PersonView> createState() => _PersonViewState();
}

class _PersonViewState extends State<PersonView> {
  currentUserId() {
    return firebaseAuth.currentUser?.uid;
  }

  final controller = Get.find<CreateAccoutController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          StreamBuilder(
            stream: usersRef.doc(currentUserId()).snapshots(),
            // initialData: initialData,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                UserModel user = UserModel.fromJson(snapshot.data.data());
                return Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 50,
                                backgroundImage: NetworkImage(
                                  user.photoUrl == ''
                                      ? 'https://media.istockphoto.com/photos/learn-to-love-yourself-first-picture-id1291208214?s=612x612'
                                      : user.photoUrl!,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        2.toString(),
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const Text(
                                        'Posts',
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        20.toString(),
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const Text(
                                        'Followers',
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        20.toString(),
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const Text(
                                        'Followings',
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            user.username!,
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: const Text(
                                'cvdgdcvvcudvc7cduvdccdgcwdvywcwuduicvdwcwcwdvcwdicdyyowdcvdcwywlkgyuv'),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            child: Text('Edit Profile'),
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                color: Theme.of(context).primaryColor,
                              ),
                              fixedSize: Size(
                                MediaQuery.of(context).size.width,
                                40,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            child: Container(
                              padding: EdgeInsets.all(8.0),
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Colors.amber.shade300,
                                shape: BoxShape.circle,
                              ),
                              child: FlutterLogo(),
                            ),
                          );
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(
                        10,
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Posts',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                );
              }
              return Container();
            },
          ),

          // Expanded(
          //   child: GridView.builder(
          //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //       mainAxisSpacing: 5.0,
          //       crossAxisSpacing: 5.0,
          //       crossAxisCount: 3,
          //     ),
          //     itemBuilder: (context, index) => Image.network(
          //       currentUser.post![index].postImages!,
          //       fit: BoxFit.cover,
          //     ),
          //     itemCount: currentUser.post!.length,
          //   ),
          // )
        ],
      ),
    );
  }
}
