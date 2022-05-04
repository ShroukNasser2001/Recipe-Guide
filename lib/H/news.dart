import 'dart:convert';
import 'dart:math';
import 'package:task4/models/article_model.dart';
import 'package:http/http.dart' as http;

//import 'https://flutlab.io/root/app/lib/models/article_model.dart';
class News {
  List<ArticleModel> news = [];
  Future<void> getNews() async {
    String url = 'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=b6be7fec831743a09721c1e944d3a6a8';
    var response = await http.get(
      Uri.parse(url),
    );
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(title: element["title"], author: element["author"], description: element["description"], url: element["url"], urlToImage: element["urlToImage"], publishedAt: element["puplishedAt"], content: element["context"]);
          news.add(articleModel);
        }
      });
    }
  }
}