class Post {
  int id;
  String dateTime;
  String username;
  String userImageUrl;
  String postImageUrl;
  String likedBy;

  Post({
    required this.id,
    required this.dateTime,
    required this.username,
    required this.userImageUrl,
    required this.postImageUrl,
    required this.likedBy,
  });
}
