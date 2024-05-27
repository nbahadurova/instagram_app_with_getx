import 'package:instagram_app/data/models/remote/post_model.dart';

abstract class PostContract {
Future<PostResponse> getPosts();
}