import 'package:get/get.dart';
import 'package:instagram_app/data/contracts/post_contract.dart';
import 'package:instagram_app/data/models/remote/post_model.dart';

class PostController extends GetxController {
  var isLoading = true.obs;
  final postModels = <Datum>[].obs;
  final PostContract _postService;
  PostController(this._postService);

 @override
  void onInit() {
    super.onInit();
    getPosts();
  }
  void getPosts() async {
    try {
      isLoading(true);
      final posts = await _postService.getPosts();
      postModels.addAll(posts.data!);
      update();
    } 
    catch (e) {
      print(e);
    } 
     finally {
      isLoading.value = false;
    }
  }
}

