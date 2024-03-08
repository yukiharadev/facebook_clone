import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;

  const Stories({Key? key, required this.currentUser, required this.stories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      height: 200,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 1 + stories.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: StoryCard(isAddStory: true, currentUser: currentUser),
            );
          }
          final Story story = stories[index - 1];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: StoryCard(story: story),
          );
        },
      ),
    );
  }
}

class StoryCard extends StatelessWidget {
  final bool isAddStory;
  final User? currentUser;
  final Story? story;

  const StoryCard({Key? key, this.isAddStory = false, this.currentUser, this.story}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child:
        CachedNetworkImage(
          imageUrl: isAddStory ? currentUser!.imageUrl : story!.imageUrl,
          width: 110,
          fit: BoxFit.cover,
          height:double.infinity,
        )
    );
  }
}

