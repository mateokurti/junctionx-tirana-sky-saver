import 'package:flutter/material.dart';
import 'package:skysaver/api/schema.models.swagger.dart';
import 'package:skysaver/utils/client.dart';
import 'package:skysaver/widgets/flights/news/news_card.dart';

class NewsList extends StatefulWidget {
  const NewsList({super.key});

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  List<Article> articles = [];


  @override
  void didChangeDependencies() async {
    final articleRsp = await apiClient.apiArticlesGet();
    if (articleRsp.isSuccessful) {
      setState(() {
        articles = articleRsp.body?.results ?? [];
      });
    }
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (ctx, idx) => NewsCard(
          article: articles[idx],
        ),
        itemCount: articles.length,
      ),
    );
  }
}
