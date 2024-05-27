import 'dart:developer';
import 'package:instagram_app/utils/network/dio.dart';
import 'package:instagram_app/utils/constants/endpoints.dart';
import 'package:instagram_app/data/models/remote/show_comments_model.dart';

class ShowCommentsService {
  Future<ShowCommentResponse> getComments(int id) async {
    final endpoint = Endpoints.getCommentId(id);
    log('Endpoint: $endpoint');

    try {
      final response = await dio.get(endpoint);
      log('Response status: ${response.statusCode}');
      if (response.statusCode == 200) {
        log('Response data: ${response.data}');
        return ShowCommentResponse.fromJson(response.data);
      } else {
        log('${response.statusCode}');
        throw Exception('Failed to fetch comments');
      }
    } catch (e, s) {
      log('Error during fetching comments: $e; $s');
      throw Exception('Error during fetching comments');
    }
  }
}
