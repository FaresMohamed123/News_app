import 'package:flutter/material.dart';
import 'package:new_app/model/category_Model.dart';
import 'package:new_app/widgets/category_Card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(
        imageAssetUrl: 'assets/entertaiment.avif',
        categoryName: 'Entertainment'),
    CategoryModel(
        imageAssetUrl: 'assets/science.avif', categoryName: 'Science'),
    CategoryModel(
        imageAssetUrl: 'assets/technology.jpeg', categoryName: 'Technology'),
    CategoryModel(
      imageAssetUrl: 'assets/health.avif', categoryName: 'Health'),
    CategoryModel(
        imageAssetUrl: 'assets/busnuss22.webp', categoryName: 'Business'),
    CategoryModel(
        imageAssetUrl: 'assets/sports.jpg', categoryName: 'Sports'),
    CategoryModel(
        imageAssetUrl: 'assets/general.jpg', categoryName: 'General'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              categories: categories[index],
            );
          }),
    );
  }
}
