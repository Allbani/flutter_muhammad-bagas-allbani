import 'package:mini_project/model/source_model.dart';

class Articel {
  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToIlamge;
  String publishedAt;
  String content;

  Articel({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToIlamge,
    required this.publishedAt,
    required this.content,
  });

  factory Articel.fromJson(Map<String, dynamic> json) {
    return Articel(
      source: Source.fromJson(
        json['source'],
      ),
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToIlamge: json['urlToImage'],
      publishedAt: json['publishedAt'],
      content: json['content'],
    );
  }
}
