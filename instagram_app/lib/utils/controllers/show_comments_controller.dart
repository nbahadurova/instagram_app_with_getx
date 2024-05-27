import 'package:get/get.dart';
import 'package:instagram_app/data/contracts/show_comments_contract.dart';
import 'package:instagram_app/data/models/remote/show_comments_model.dart';


class ShowCommentsController extends GetxController {
  var isLoading = true.obs;
  final commentModels = <Datum>[].obs;
  final ShowCommentsContract _showCommentsContract;
  ShowCommentsController(this._showCommentsContract);
  
  void getComments(int id) async {
    try {
      isLoading(true);
      final posts = await _showCommentsContract.getcomments(id);
      commentModels.addAll(posts.data!);
      update();
    } catch (e) {
      throw Exception();
    } finally {
      isLoading.value = false;
    }
  }
}
