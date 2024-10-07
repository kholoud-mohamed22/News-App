import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/widgets/news_list_view.dart';

import '../widgets/categories_list_view.dart';
import '../widgets/news_list_view_builder.dart';
import '../widgets/news_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('News'),
            Text('Cloud',style: TextStyle(color:Colors.orange),),
          ],
        ),
      ),
      body:const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoriesListView()),
            SliverToBoxAdapter(child: SizedBox(height: 30,),),
            NewsListViewBuilder(category:'general'),

          ],
        ),
        // child: Column(
        //   children: [
        //     SizedBox(height: 16,),
        //     CategoriesListView(),
        //     SizedBox(height: 30,),
        //     Expanded(child: NewsListView()),
        //
        //
        //   ],
        // ),
      ),

      //CategoriesListView(),


    );
  }
}
