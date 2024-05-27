import 'package:flutter/material.dart';
import 'package:instagram_app/utils/constants/app_assets.dart';

class StoriesModel {
  final String image;
  final List<Color> color;

  const StoriesModel({required this.image, required this.color});

  static const List<StoriesModel> stories = [
    StoriesModel(
        image: AppAssets.storyImg1,
        color: <Color>[Color(0xffBAA47), Color(0xffD91A46), Color(0xffA60F93)]),
    StoriesModel(image: AppAssets.storyImg2, color: <Color>[
      Color(0xffE20337),
      Color(0xffC60188),
      Color(0xff7700C3)
    ]),
    StoriesModel(
        image: AppAssets.storyImg3,
        color: <Color>[Color(0xffBAA47), Color(0xffD91A46), Color(0xffA60F93)]),
    StoriesModel(
        image: AppAssets.storyImg4,
        color: <Color>[Color(0xffBAA47), Color(0xffD91A46), Color(0xffA60F93)]),
    StoriesModel(
        image: AppAssets.storyImg5,
        color: <Color>[Color(0xffBAA47), Color(0xffD91A46), Color(0xffA60F93)]),
  ];
}
