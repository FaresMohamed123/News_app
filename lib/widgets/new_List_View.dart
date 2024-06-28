import 'package:flutter/material.dart';

import 'package:new_app/model/article_model.dart';
import 'package:new_app/widgets/new_tile.dart';

class NewListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewListView({
    Key? key,
    required this.articles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return NewsTile(
          articleModel: articles[index],
        );
      },
    ));
  }
}
