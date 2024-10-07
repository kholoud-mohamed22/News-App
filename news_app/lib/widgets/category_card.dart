import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key,required this.category});

  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context){return  CategoryView(category: category.categoryName,);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 13),
        child: Container(
      
          height: 110,
          width: 200,
      
          decoration: BoxDecoration(
            color: Colors.orange,
            image:  DecorationImage(
              image: AssetImage(category.image),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(child: Text(category.categoryName,
            style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold ),)),
        ),
      ),
    );
  }
}
