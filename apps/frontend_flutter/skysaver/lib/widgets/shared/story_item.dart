import 'package:flutter/material.dart';
import 'package:skysaver/consts.dart';
import 'package:skysaver/widgets/shared/story_cycle.dart';

class StorySingleItem extends StatelessWidget {
  const StorySingleItem({
    super.key,
    required this.story,
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
  });

  final StoryItem story;

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

  @override
  Widget build(BuildContext context) {
    double? altRadius = 27;
    double altPadding;
    if (circleRadius != null) {
      altRadius = circleRadius;
    }
    if (circlePadding != null) {
      altPadding = altRadius! + circlePadding!;
    } else {
      altPadding = altRadius! + 3;
    }
    return Container(
      margin: EdgeInsets.fromLTRB(
        spaceBetweenStories ?? 5,
        0,
        spaceBetweenStories ?? 5,
        10,
      ),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 7),
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(borderRadius),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.grey.withOpacity(0.5)
                      : Colors.black26.withOpacity(0.5),
                  blurRadius: 8,
                  spreadRadius: -4,
                  blurStyle: BlurStyle.outer,
                  offset: const Offset(0.1, 0.1),
                ),
              ],
            ),
            child: InkWell(
              onTap: onTap != null ? () => onTap!(story.id) : null,
              child: CircleAvatar(
                radius: borderThickness != null
                    ? altPadding +
                        (selectedId == story.id
                            ? selectedBorderThickness ?? borderThickness!
                            : borderThickness!)
                    : altPadding + 1.5,
                backgroundColor: selectedId == null || selectedId == story.id
                    ? highLightColor ?? const Color(0xffcc306C)
                    : (highLightColor ?? const Color(0xffcc306C))
                        .withOpacity(0.1),
                child: CircleAvatar(
                    backgroundColor: paddingColor ?? Colors.white,
                    radius: altPadding,
                    child: Container(
                      width: 80.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          colorFilter: story.enabled
                              ? null
                              : ColorFilter.mode(
                                  Colors.black.withOpacity(0.6),
                                  BlendMode.srcOver,
                                ),
                          image: story.thumbnail,
                        ),
                      ),
                    )

                    //
                    // CircleAvatar(
                    //   radius: altRadius,
                    //   backgroundColor: Colors.white,
                    //   backgroundImage: story.thumbnail,
                    //
                    // ),
                    ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          showStoryName
              ? Text(
                  story.name,
                  style: !story.enabled
                      ? Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).disabledColor,
                          )
                      : Theme.of(context).textTheme.bodySmall,
                )
              : const Center()
        ],
      ),
    );
  }
}
