import 'dart:developer';
import 'package:instagram_app/utils/network/dio.dart';
import 'package:instagram_app/utils/constants/endpoints.dart';
import 'package:instagram_app/data/models/remote/add_comment_model.dart';

class CommentService {
  Future<AddCommentResponse> addComments(
      String text, int id, String username, String time) async {
    final endpoint = Endpoints.addCommentId(id);
    final requestBody = {
      "text": text,
      "username": username,
      "id": id,
      "time": time,
    };
    final response = await dio.post(endpoint, data: requestBody);
    log(response.statusCode.toString());
    if (response.statusCode == 200) {
      return AddCommentResponse.fromJson(response.data);
    } else {
      throw Exception('Failed to authenticate: ${response.statusCode}');
    }
  }
}
