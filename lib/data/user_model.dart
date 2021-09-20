import 'package:social_media_app/data/post_model.dart';

class User {
  final int id;
  final String name;
  final String username;
  final String? profileimage;
  final int? following;
  final int? followers;
  final List<Post>? post;

  User({
    required this.id,
    required this.name,
    required this.username,
    this.profileimage,
    this.following,
    this.followers,
    this.post,
  });
}
