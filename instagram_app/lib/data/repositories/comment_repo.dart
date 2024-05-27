import 'package:instagram_app/data/contracts/comment_contract.dart';
import 'package:instagram_app/data/models/remote/add_comment_model.dart';
import 'package:instagram_app/data/services/remote/comment_service.dart';

class CommentRepo implements CommentContract {
  final CommentService _commentService;

  CommentRepo(this._commentService);

  @override
  Future<AddCommentResponse> addComments(
          String text, int id, String username, String time) =>
      _commentService.addComments(text, id, username, time);
}
