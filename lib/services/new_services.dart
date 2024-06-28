import 'package:dio/dio.dart';
import 'package:new_app/model/article_model.dart';

class NewServices {
  final Dio dio;

  NewServices(this.dio);
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=ebe4bcb5bb5c46dd88c91d8895d50802&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
    //print(articlesList);
  }
}
