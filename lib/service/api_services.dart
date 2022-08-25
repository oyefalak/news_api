import 'dart:convert';
import 'dart:html';

import 'package:news_api/model/Article.dart';

class ApiServce{

  final endpoint = 'https://newsapi.org/v2/everything?q=tesla&from=2022-07-25&sortBy=publishedAt&apiKey=4a391eb2d1394a038152fb079373b327';
  Future<List<Article>> getArticle()async{
    Response response = await get(Url.parse(endpoint));
    if(response.statusCode == 200){

      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['article'];
      List<Article> articles = body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw 'Data not found';
    }
  }
}