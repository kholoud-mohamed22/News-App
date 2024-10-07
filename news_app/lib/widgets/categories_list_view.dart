import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  final List<CategoryModel> categories =const[
    CategoryModel(image: 'assets/business.avif', categoryName: 'business'),
    CategoryModel(image: 'assets/business.avif', categoryName: 'sports'),
    CategoryModel(image: 'assets/business.avif', categoryName: 'health'),
    CategoryModel(image: 'assets/business.avif', categoryName: 'science'),
    CategoryModel(image: 'assets/business.avif', categoryName: 'technology'),
    CategoryModel(image: 'assets/business.avif', categoryName: 'entertainment'),
    CategoryModel(image: 'assets/business.avif', categoryName: 'technology')
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(//builder ->>// بتكرر الليست فيو
        physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context,index) {
            return  CategoryCard(category: categories[index],);

          }),
    );
  }
}
