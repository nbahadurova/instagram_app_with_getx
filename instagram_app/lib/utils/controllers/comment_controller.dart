import 'dart:developer';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/utils/di/locator.dart';
import 'package:instagram_app/data/services/remote/comment_service.dart';
import 'package:instagram_app/data/services/local/comment_local_service.dart';
import 'package:instagram_app/utils/controllers/show_comments_controller.dart';

class CommentController extends GetxController {
  final CommentService _commentService;
  final CommentLocalService _commentLocalService;
  final textController = TextEditingController().obs;
  CommentController(this._commentService, this._commentLocalService);
  final ShowCommentsController showCommentsController = Get.put(locator());
  @override
  void onClose() {
    textController.value.dispose();
    super.onClose();
  }

  void addComment(int id) async {
    try {
      final response = await _commentService.addComments(
          textController.value.text,
          id,
          textController.value.text,
          textController.value.text);
      await _commentLocalService.saveComments(response);
      textController.value.clear();
    } catch (e, s) {
      log(e.toString());
      log(s.toString());
    }
  }
}
