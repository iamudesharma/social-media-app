import 'package:social_media_app/data/post_model.dart';
import 'package:social_media_app/data/user_model.dart';

User currentUser = User(
  id: 1,
  name: 'Udesh Shrama',
  username: 'iamudesharma',
  followers: 130,
  following: 120,
  profileimage:
      'https://images.unsplash.com/photo-1595781572981-d63151b232ed?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2134&q=80',
  post: [
    Post(
      comments: [],
      des: '',
      isLiked: false,
      like: 28,
      postImages:
          'https://images.unsplash.com/photo-1595781572981-d63151b232ed?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2134&q=80',
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
    profileimage:
        'https://images.unsplash.com/photo-1589081318939-f9952734290f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2000&q=80',
    post: [
      Post(
        comments: [
          'mast pic',
          'great look',
        ],
        des: 'its my first post',
        isLiked: false,
        like: 100,
        postImages:
            'https://images.unsplash.com/photo-1589081318939-f9952734290f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2000&q=80',
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
    profileimage:
        'https://images.unsplash.com/photo-1543117976-792a2d6ddb1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80',
    post: [
      Post(
        comments: [
          'mast pic',
          'great look',
        ],
        des: 'its my first post',
        isLiked: false,
        like: 100,
        postImages:
            'https://images.unsplash.com/photo-1543117976-792a2d6ddb1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80',
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
    profileimage:
        'https://images.unsplash.com/photo-1590098391939-421c32ce7095?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=80',
    post: [
      Post(
        comments: [
          'mast pic',
          'great look',
        ],
        des: 'its my first post',
        isLiked: false,
        like: 100,
        postImages:
            'https://images.unsplash.com/photo-1590098391939-421c32ce7095?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=80',
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
    profileimage:
        'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=80',
    post: [
      Post(
        comments: [
          'mast pic',
          'great look',
        ],
        des: 'its my first post',
        isLiked: false,
        like: 100,
        postImages:
            'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=80',
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
    profileimage:
        'https://images.unsplash.com/photo-1500048993953-d23a436266cf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=80',
    post: [
      Post(
        comments: [
          'mast pic',
          'great look',
        ],
        des: 'its my first post',
        isLiked: false,
        like: 100,
        postImages:
            'https://images.unsplash.com/photo-1500048993953-d23a436266cf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=80',
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
