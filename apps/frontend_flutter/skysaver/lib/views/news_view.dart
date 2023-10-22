import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:skysaver/api/schema.models.swagger.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsView extends StatefulWidget {
  const NewsView({super.key, required this.article});

  final Article article;

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    final body = _buildReaderContent(widget.article, context);
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        // hideOnScroll: true,
        body: body,
      ),
    );
  }

  Padding _buildReaderContent(
    Article article,
    BuildContext context,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: NotificationListener<ScrollUpdateNotification>(
        child: ListView(
          cacheExtent: 99999,
          children: [
            Hero(
              tag: 'a:${article.id}.t',
              child: Text(
                article.title,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Theme.of(context).textTheme.bodyMedium?.color,
                    ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            if (article.photo != null)
              Hero(
                tag: 'a:${article.id}.i',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CachedNetworkImage(
                    imageUrl: article.photo ??
                        "http://via.placeholder.com/350x150",
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) =>
                            CircularProgressIndicator(
                      value: downloadProgress.progress,
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            const SizedBox(
              height: 15,
            ),
            SelectionArea(
              child: HtmlWidget(
                article.content,
                onTapUrl: (url) {
                  launchUrl(
                    Uri.parse(url),
                  );
                  return true;
                },
                customStylesBuilder: (element) {
                  if (element.localName == "a") {
                    // print(element.attributes);
                  }
                  if (element.localName?.contains("img") ?? false) {
                    final url = element.attributes['src'] ?? "";
                    final uri = Uri.tryParse(url);
                    final imgUri = Uri.tryParse(article.photo ?? "");
                    if (uri != null && imgUri != null) {
                      final parts = uri.path.split("/");
                      final imgParts = imgUri.path.split("/");
                      final name = parts.last.replaceAllMapped(
                          RegExp(r'\d+[xX]\d+'), (match) => "");
                      final imgName = imgParts.last.replaceAllMapped(
                          RegExp(r'\d+[xX]\d+'), (match) => "");
                      if (imgParts.length == parts.length &&
                          imgParts.slice(0, -2).join("/") ==
                              parts.slice(0, -2).join("/") &&
                          name == imgName) {
                        return {"display": "none"};
                      }
                    }
                  }
                  return null;
                },
                customWidgetBuilder: (element) {
                  if (element.localName == "img") {
                    final url = element.attributes['src'];
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: CachedNetworkImage(
                        imageUrl: url ?? "http://via.placeholder.com/350x150",
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) =>
                                CircularProgressIndicator(
                          value: downloadProgress.progress,
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                        fit: BoxFit.fill,
                      ),
                    );
                  }
                  return null;
                },
                onLoadingBuilder: (context, element, loadingProgress) =>
                    const CircularProgressIndicator(),
                enableCaching: true,
                textStyle: const TextStyle(fontSize: 16),
              ),
            ),
            const Divider(),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 160,
            ),
          ],
        ),
      ),
    );
  }
}
