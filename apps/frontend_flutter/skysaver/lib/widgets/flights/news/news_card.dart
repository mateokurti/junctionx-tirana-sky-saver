import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:skysaver/api/schema.models.swagger.dart';
import 'package:skysaver/consts.dart';
import 'package:skysaver/utils/client.dart';
import 'package:skysaver/views/news_view.dart';
import 'package:skysaver/widgets/shared/shadow_card.dart';

class NewsCard extends StatefulWidget {
  final Article article;

  const NewsCard({super.key, required this.article});

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return ShadowCard(
      margin: const EdgeInsets.all(8.0),
      onTap: () {
        setState(() {
          apiClient.apiArticlesIdMarkReadPost(
            id: widget.article.id,
            body: const ArticleRequest(
              interactions: [],
              title: "",
              description: "",
              content: "",
              tokens: 0,
            ),
          );
          widget.article.interactions
              .add(UserArticleInteraction(id: widget.article.id));
        });
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewsView(
              article: widget.article,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            if (widget.article.photo != null)
              Hero(
                tag: 'a:${widget.article.id}.i',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(borderRadius),
                  child: CachedNetworkImage(
                    imageUrl: widget.article.photo ??
                        "http://via.placeholder.com/350x150",
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) =>
                            CircularProgressIndicator(
                      value: downloadProgress.progress,
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            if (widget.article.photo != null)
              const SizedBox(
                width: 10,
              ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: 'a:${widget.article.id}.t',
                      child: Text(
                        widget.article.title,
                        style: widget.article.interactions.isNotEmpty
                            ? Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  color: Theme.of(context).disabledColor,
                                )
                            : Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    const Divider(),
                    Text(
                      widget.article.description,
                      style: widget.article.interactions.isNotEmpty
                          ? Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: Theme.of(context).disabledColor,
                              )
                          : Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
