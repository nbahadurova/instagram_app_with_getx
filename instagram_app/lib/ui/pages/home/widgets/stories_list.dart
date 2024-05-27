import 'package:flutter/material.dart';
import 'package:instagram_app/data/models/local/stories_model.dart';
import 'package:instagram_app/ui/pages/home/widgets/story_widget.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    const story = StoriesModel.stories;
    return SizedBox(
      height: 100,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 15,
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: story.length,
        itemBuilder: (BuildContext context, int index) {
          final stories = story[index];
          return StoryWidget(image: stories.image, colors: stories.color);
        },
      ),
    );
  }
}
