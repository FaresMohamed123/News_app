import 'package:flutter/material.dart';
import 'package:new_app/widgets/appBarText.dart';
import 'package:new_app/widgets/newList_viewb_uilder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: appBarText(
        title: 'News',
        subtitle: category,
      ),
        body:  CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            NewListViewBuilder(category: category,),
          ],
        ));
  }
}