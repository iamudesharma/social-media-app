class Post {
  final String? postImages;
  final List<String>? comments;
  final bool? isLiked;
  final String? des;
  final int? like;
  DateTime? datatime;

  Post({
    this.postImages,
    this.comments,
    this.isLiked,
    this.des,
    this.like,
    this.datatime,
  });
}
