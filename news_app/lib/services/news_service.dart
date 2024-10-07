import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewService{

  final Dio dio;
 // final dio = Dio();

  NewService(this.dio);


  Future<List<ArticleModel>>getNews({required String category}) async {
    var response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=f18f358a3ded4dbcb1706901ab54642f&category=$category');
    Map<String,dynamic> jsonData=response.data;

    List<dynamic>articles=jsonData['articles'];
    List<ArticleModel>articlesList=[];

    for(var article in articles){
      ArticleModel articleModel=ArticleModel(image: article['urlToImage'], title: article['title'], subTitle: article['description']);
      articlesList.add(articleModel);
    }
    return articlesList;

  }
}