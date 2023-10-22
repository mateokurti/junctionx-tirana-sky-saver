import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart' hide Badge;
import 'package:skysaver/api/schema.models.swagger.dart';
import 'package:skysaver/extensions.dart';
import 'package:skysaver/utils/client.dart';
import 'package:skysaver/views/badges_view.dart';
import 'package:skysaver/widgets/shared/shadow_card.dart';
import 'package:skysaver/widgets/shared/story_cycle.dart';

class BadgesWidget extends StatefulWidget {
  const BadgesWidget({super.key});

  @override
  State<BadgesWidget> createState() => _BadgesWidgetState();
}

class _BadgesWidgetState extends State<BadgesWidget> {
  List<Badge> badges = [];

  @override
  void didChangeDependencies() async {
    final badgesRsp = await apiClient.apiBadgesGet();
    if (badgesRsp.isSuccessful) {
      setState(() {
        badges = badgesRsp.body?.results ?? [];
      });
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ShadowCard(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Badges"),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BadgesView(),
                    ),
                  );
                },
                child: const Text("See all"),
              )
            ],
          ),
          SizedBox(
            height: 120,
            child: StoryCircle(
              highLightColor:
                  Theme.of(context).colorScheme.primary.withOpacity(0.5),
              paddingColor: Theme.of(context).colorScheme.surface,
              borderThickness: 0,
              selectedBorderThickness: 3,
              circlePadding: 0,
              stories: badges
                  .map(
                    (e) => StoryItem(
                        id: e.id,
                        name: e.name.truncate(maxLength: 10),
                        thumbnail: CachedNetworkImageProvider(
                          e.iconUrl,
                        ),
                        enabled: e.claimed),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    ));
  }
}
