import 'package:instagram_app/data/models/remote/add_comment_model.dart';

abstract class CommentContract {
  Future<AddCommentResponse> addComments(
    String text,
    int id,
    String username,
    String time,
  );
}
