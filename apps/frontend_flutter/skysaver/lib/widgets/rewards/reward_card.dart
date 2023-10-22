import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:skysaver/api/schema.models.swagger.dart';
import 'package:skysaver/widgets/shared/shadow_card.dart';

class RewardCard extends StatefulWidget {
  final Reward reward;

  const RewardCard({super.key, required this.reward});

  @override
  State<RewardCard> createState() => _RewardCardState();
}

class _RewardCardState extends State<RewardCard> {
  @override
  Widget build(BuildContext context) {
    return ShadowCard(
        child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: CachedNetworkImage(
            imageUrl:
                widget.reward.imageUrl ?? "http://via.placeholder.com/350x150",
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                CircularProgressIndicator(
              value: downloadProgress.progress,
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.reward.name,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      widget.reward.description,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.monetization_on_outlined),
                  const SizedBox(
                    width: 1,
                  ),
                  Text(
                    widget.reward.tokens.toString(),
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}
