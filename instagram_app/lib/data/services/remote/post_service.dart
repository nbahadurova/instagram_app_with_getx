import 'dart:developer';
import 'package:instagram_app/utils/network/dio.dart';
import 'package:instagram_app/utils/constants/endpoints.dart';
import 'package:instagram_app/data/models/remote/post_model.dart';

class PostService {
  Future<PostResponse> getPosts() async {
    const endpoint = Endpoints.postUrl;
    log('Endpoint: $endpoint');

    try {
      final response = await dio.get(endpoint);
      log('Response status: ${response.statusCode}');
      if (response.statusCode == 200) {
        log('Response data: ${response.data}');
        return PostResponse.fromJson(response.data);
      } else {
        log('Failed to fetch posts. Status code: ${response.statusCode}');
        throw Exception('Failed to fetch posts');
      }
    } catch (e,s) {
      log('Error during fetching posts: $e; $s');
      throw Exception('Error during fetching posts');
    }
  }
}
