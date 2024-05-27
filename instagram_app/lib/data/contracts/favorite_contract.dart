import 'package:instagram_app/data/models/remote/favorite_model.dart';

abstract class FavoriteContract {
Future<FavoriteResponse> likePosts(
  int id,
);
}