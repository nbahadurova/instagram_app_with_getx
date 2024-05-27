import 'package:instagram_app/data/contracts/post_contract.dart';
import 'package:instagram_app/data/models/remote/post_model.dart';
import 'package:instagram_app/data/services/remote/post_service.dart';

class PostRepo implements PostContract {
  final PostService _postService;

  PostRepo(this._postService);
  @override
  Future<PostResponse> getPosts() => _postService.getPosts();
}
