import 'package:instagram_app/data/contracts/show_comments_contract.dart';
import 'package:instagram_app/data/models/remote/show_comments_model.dart';
import 'package:instagram_app/data/services/remote/show_comments_service.dart';

class ShowCommentsRepo implements ShowCommentsContract {
  final ShowCommentsService _showCommentsService;

  ShowCommentsRepo(this._showCommentsService);
  @override
  Future<ShowCommentResponse> getcomments(int id) =>
      _showCommentsService.getComments(id);
}
