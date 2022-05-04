class ArticleModel {
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String content;
  DateTime publishedAt;
  ArticleModel({required this.author, required this.title, required this.description, required this.url, required this.content, required this.urlToImage, required this.publishedAt});
}