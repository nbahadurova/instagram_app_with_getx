import 'package:instagram_app/data/contracts/favorite_contract.dart';
import 'package:instagram_app/data/models/remote/favorite_model.dart';
import 'package:instagram_app/data/services/remote/favorite_service.dart';

class FavoriteRepo implements FavoriteContract {
  final FavoriteService _favoriteService;

  FavoriteRepo(this._favoriteService);
  @override
  Future<FavoriteResponse> likePosts(int id) => _favoriteService.likePosts(id);
}
