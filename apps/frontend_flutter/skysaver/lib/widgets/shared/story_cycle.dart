import 'package:flutter/material.dart';
import 'package:skysaver/widgets/shared/story_item.dart';

class StoryItem {
  int id;
  String name;

  ImageProvider thumbnail;
  bool enabled;
  StoryItem({
    required this.id,
    required this.name,
    required this.thumbnail,
    this.enabled = true,
  });
}

class StoryCircle extends StatelessWidget {
  final List<StoryItem> stories;
  final int? selectedId;
  final TextStyle? storyCircleTextStyle;
  final Color? highLightColor;
  final double? circleRadius;
  final double? circlePadding;
  final double? borderThickness;
  final double? selectedBorderThickness;

  final Color? paddingColor;

  final double? spaceBetweenStories;

  final bool showStoryName;

  final void Function(int)? onTap;

  const StoryCircle({
    Key? key,
    required this.stories,
    this.selectedId,
    this.storyCircleTextStyle,
    this.highLightColor,
    this.circleRadius,
    this.circlePadding,
    this.borderThickness,
    this.selectedBorderThickness,
    this.paddingColor,
    this.spaceBetweenStories,
    this.onTap,
    this.showStoryName = true,
    this.axis = Axis.horizontal,
  }) : super(key: key);

  final Axis axis;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: axis,
      itemBuilder: (context, idx) {
        final story = stories[idx];
        return StorySingleItem(
          story: story,
          onTap: onTap,
          selectedBorderThickness: selectedBorderThickness,
          paddingColor: paddingColor,
          circlePadding: circlePadding,
          borderThickness: borderThickness,
          highLightColor: highLightColor,
          circleRadius: circleRadius,
          selectedId: selectedId,
          showStoryName: showStoryName,
          spaceBetweenStories: spaceBetweenStories,
          storyCircleTextStyle: storyCircleTextStyle,
        );
      },
      itemCount: stories.length,
    );
  }
}
