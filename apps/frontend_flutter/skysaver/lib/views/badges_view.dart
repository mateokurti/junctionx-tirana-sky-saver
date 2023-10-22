import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart' hide Badge;
import 'package:skysaver/api/schema.models.swagger.dart';
import 'package:skysaver/extensions.dart';
import 'package:skysaver/utils/client.dart';
import 'package:skysaver/widgets/shared/story_cycle.dart';
import 'package:skysaver/widgets/shared/story_item.dart';

class BadgesView extends StatefulWidget {
  const BadgesView({super.key});

  @override
  State<BadgesView> createState() => _BadgesViewState();
}

class _BadgesViewState extends State<BadgesView> {
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
    final stories = badges
        .map(
          (e) => SizedBox(
            width: 100,
            height: 100,
            child: StorySingleItem(
              highLightColor:
                  Theme.of(context).colorScheme.primary.withOpacity(0.5),
              paddingColor: Theme.of(context).colorScheme.surface,
              borderThickness: 0,
              selectedBorderThickness: 3,
              circlePadding: 0,
              story: StoryItem(
                  id: e.id,
                  name: e.name.truncate(maxLength: 10),
                  thumbnail: CachedNetworkImageProvider(
                    e.iconUrl ?? "http://via.placeholder.com/100x100",
                  ),
                  enabled: e.claimed),
            ),
          ),
        )
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Badges"),
      ),
      body: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: stories,
      ),
    );
  }
}
