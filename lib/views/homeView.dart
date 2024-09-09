import 'package:flutter/material.dart';
import 'package:new_app/widgets/appBarText.dart';
import 'package:new_app/widgets/category_List_View.dart';
import 'package:new_app/widgets/newList_viewb_uilder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: appBarText(
        title: 'News',
        subtitle: 'Cloud',
      ),
        body: const CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoryListView()),
            NewListViewBuilder(
              category: 'general',
            ),
          ],
        ));
  }
}
