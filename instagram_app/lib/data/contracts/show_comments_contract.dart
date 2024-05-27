import 'package:instagram_app/data/models/remote/show_comments_model.dart';

abstract class ShowCommentsContract {
  Future<ShowCommentResponse> getcomments(int id);
}
