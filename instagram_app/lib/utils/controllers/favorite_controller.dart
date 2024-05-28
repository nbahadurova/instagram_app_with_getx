import 'dart:developer';
import 'package:get/get.dart';
import 'package:instagram_app/utils/controllers/post_controller.dart';
import 'package:instagram_app/data/services/remote/favorite_service.dart';

class FavoriteController extends GetxController {
  FavoriteController(this._favoriteService);
  final FavoriteService _favoriteService;
  final PostController postController = Get.find();

  var postIsClicked = <int, bool>{}.obs;

  Future<void> toggleLikePost(int id) async {
    try {
      bool currentStatus = postIsClicked[id] ?? false;
      postIsClicked[id] = !currentStatus;

      if (postIsClicked[id]!) {
        final response = await _favoriteService.likePosts(id);
        if (response.success == true) {
          final postIndex =
              postController.postModels.indexWhere((post) => post.id == id);
          if (postIndex != -1) {
            final updatedPost = postController.postModels[postIndex];
            postController.postModels[postIndex] = updatedPost;
          }
        }
      } else {
        final response = await _favoriteService.unlikePost(id);
        if (response.success == true) {
          final postIndex =
              postController.postModels.indexWhere((post) => post.id == id);
          if (postIndex != -1) {
            postController.postModels.removeAt(postIndex);
          }
        }
      }
    } catch (e) {
      log('$e');
    }
  }
}
