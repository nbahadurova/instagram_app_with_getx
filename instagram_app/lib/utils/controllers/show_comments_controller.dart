import 'package:get/get.dart';
import 'package:instagram_app/data/contracts/show_comments_contract.dart';
import 'package:instagram_app/data/models/remote/show_comments_model.dart';


class ShowCommentsController extends GetxController {
  var isLoading = true.obs;
  final commentModels = <Datum>[].obs;
  final ShowCommentsContract _showCommentsService;
  ShowCommentsController(this._showCommentsService);
  
  void getComments(int id) async {
    try {
      isLoading(true);
      final posts = await _showCommentsService.getcomments(id);
      commentModels.addAll(posts.data!);
      update();
    } catch (e) {
      throw Exception();
    } finally {
      isLoading.value = false;
    }
  }
}
