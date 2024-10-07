import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/news_list_view.dart';
import '../widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key, required this.category}) : super(key: key);

  final String category;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(slivers:[NewsListViewBuilder(category:category ,),]),
    );
  }
}
