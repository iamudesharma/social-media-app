import 'package:social_media_app/data/post_model.dart';
import 'package:social_media_app/data/user_model.dart';

User currentUser = User(
  id: 1,
  name: 'Udesh Shrama',
  username: 'iamudesharma',
  followers: 130,
  following: 120,
  profileimage: '',
  post: [
    Post(
      comments: [],
      des: '',
      isLiked: false,
      like: 28,
      postImages: '',
      datatime: DateTime(
        2021,
        5,
        3,
      ),
    ),
  ],
);

List<User> allUsers = [
  currentUser,
  User(
    id: 2,
    name: 'Vijay Shrama',
    username: 'vijayyadav13',
    followers: 400,
    following: 30,
    profileimage: '',
    post: [
      Post(
        comments: [
          'mast pic',
          'great look',
        ],
        des: 'its my first post',
        isLiked: false,
        like: 100,
        postImages: '',
        datatime: DateTime(2021, 6, 2),
      ),
    ],
  ),
  User(
    id: 3,
    name: 'Jai Shrama',
    username: 'jaisharma',
    followers: 100,
    following: 300,
    profileimage: '',
    post: [
      Post(
        comments: [
          'mast pic',
          'great look',
        ],
        des: 'its my first post',
        isLiked: false,
        like: 100,
        postImages: '',
        datatime: DateTime(2021, 3, 2),
      ),
    ],
  ),
  User(
    id: 4,
    name: 'Hi Shrama',
    username: 'hishrama',
    followers: 400,
    following: 890,
    profileimage: '',
    post: [
      Post(
        comments: [
          'mast pic',
          'great look',
        ],
        des: 'its my first post',
        isLiked: false,
        like: 100,
        postImages: '',
        datatime: DateTime(2021, 6, 2),
      ),
    ],
  ),
  User(
    id: 5,
    name: 'Vijay ',
    username: 'vijay13',
    followers: 90,
    following: 307,
    profileimage: '',
    post: [
      Post(
        comments: [
          'mast pic',
          'great look',
        ],
        des: 'its my first post',
        isLiked: false,
        like: 100,
        postImages: '',
        datatime: DateTime(2021, 3, 12),
      ),
    ],
  ),
  User(
    id: 6,
    name: 'Shrama Ji',
    username: 'sharmaji2',
    followers: 180,
    following: 730,
    profileimage: '',
    post: [
      Post(
        comments: [
          'mast pic',
          'great look',
        ],
        des: 'its my first post',
        isLiked: false,
        like: 100,
        postImages: '',
        datatime: DateTime(2021, 2, 4),
      ),
    ],
  ),
  // User(
  //   id: 7,
  //   name: 'Vijay Shrama',
  //   username: 'vijayyadav13',
  //   followers: 400,
  //   following: 30,
  //   profileimage: '',
  //   post: [
  //     Post(
  //       comments: [
  //         'mast pic',
  //         'great look',
  //       ],
  //       des: 'its my first post',
  //       isLiked: false,
  //       like: 100,
  //       postImages: '',
  //       datatime: DateTime(2021, 6, 2),
  //     ),
  //   ],
  // ),
  // User(
  //   id: 8,
  //   name: 'Vijay Shrama',
  //   username: 'vijayyadav13',
  //   followers: 400,
  //   following: 30,
  //   profileimage: '',
  //   post: [
  //     Post(
  //       comments: [
  //         'mast pic',
  //         'great look',
  //       ],
  //       des: 'its my first post',
  //       isLiked: false,
  //       like: 100,
  //       postImages: '',
  //       datatime: DateTime(2021, 6, 2),
  //     ),
  //   ],
  // ),
];
