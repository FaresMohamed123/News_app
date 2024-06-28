import 'package:flutter/material.dart';
import 'package:new_app/model/category_Model.dart';
import 'package:new_app/views/category+view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categories});
  final CategoryModel categories;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CategoryView(
            category: categories.categoryName,
          ),
        ));
      },
      child: Container(
          margin: const EdgeInsets.all(5),
          width: 185,
          height: 95,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    categories.imageAssetUrl,
                  )),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: Text(
                          categories.categoryName,
                          style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                        ))),
    );
  }
}
