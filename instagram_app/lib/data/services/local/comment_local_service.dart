import 'dart:convert';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:instagram_app/data/models/remote/add_comment_model.dart';

class CommentLocalService {
  CommentLocalService(this._box);

  final Box<String> _box;

  Future<void> saveComments(AddCommentResponse response) async {
    _box.put("comments", jsonEncode(response.toJson()));
  }

  AddCommentResponse? get commentResponse {
    try {
      String? commentResponse = _box.get("comments");
      AddCommentResponse decodedResponse =
          AddCommentResponse.fromJson(jsonDecode(commentResponse!));
      return decodedResponse;
    } catch (e) {
      return null;
    }
  }

  Future<int> clearCache() => _box.clear();
}
