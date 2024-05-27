import 'dart:developer';
import 'package:instagram_app/utils/network/dio.dart';
import 'package:instagram_app/utils/constants/endpoints.dart';
import 'package:instagram_app/data/models/remote/favorite_model.dart';

class FavoriteService {
  Future<FavoriteResponse> likePosts(int id) async {
    final endpoint = Endpoints.likePostsId(id);
    try {
      final response = await dio.get(endpoint);
      log('Response status: ${response.statusCode}');
      if (response.statusCode == 200) {
        log('Response data: ${response.data}');
        return FavoriteResponse.fromJson(response.data);
      } else {
        log('Failed to like posts. Status code: ${response.statusCode}');
        throw Exception('Failed to like posts');
      }
    } catch (e, s) {
      log('$e; $s');
      throw Exception('Error');
    }
  }

  Future<FavoriteResponse> unlikePost(int id) async {
    final endpoint = Endpoints.likePostsId(id);
    final response = await dio.get(endpoint);
    return FavoriteResponse.fromJson(response.data);
  }
}
