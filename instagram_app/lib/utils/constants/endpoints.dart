class Endpoints {
  Endpoints._();
  static const baseUrl = 'https://instagram.bakudevs.com/api/customer/v1';
  static const postUrl = '$baseUrl/posts';
  static const loginUrl = '$baseUrl/login';
  static String getCommentId(int id) => '$baseUrl/posts/comments/$id';
  static String addCommentId(int id) => '$baseUrl/posts/comment/$id';
  static String likePostsId(int id) => '$baseUrl/posts/like/$id';
}
