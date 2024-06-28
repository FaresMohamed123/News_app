import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:new_app/model/article_model.dart';
import 'package:new_app/services/new_services.dart';
import 'package:new_app/widgets/new_List_View.dart';

class NewListViewBuilder extends StatefulWidget {
  const NewListViewBuilder({
    super.key, required this.category,
  });
  final String category;
  @override
  State<NewListViewBuilder> createState() => _NewListViewBuilderState();
}

class _NewListViewBuilderState extends State<NewListViewBuilder> {
  dynamic future;
  @override
  void initState() {
    future = NewServices(Dio()).getNews(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Center(
              child: Text('Oops There wae an error try late'),
            ),
          );
        } else {
          return SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
