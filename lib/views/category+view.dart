import 'package:flutter/material.dart';
import 'package:new_app/widgets/newList_viewb_uilder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                ' Cloud',
                style:
                    TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body:  CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            NewListViewBuilder(category: category,),
          ],
        ));
  }
}