import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_news/models/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];
  Future<void> getNews() async {
    String url =
        "http://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=76c6c21a49474c4db99b8ecccf23fc20";
    var responce = await http.get(url);
    var jsonData = jsonDecode(responce.body);
    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element['description'] != null) {
          ArticleModel articleMode = ArticleModel(
              tittle: element['title'],
              author: element['author'],
              description: element['description'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              content: element["context"]);
          news.add(articleMode);
        }
      });
    }
  }
}

class CategoryNewsClass {
  List<ArticleModel> news = [];
  Future<void> getNews(String category) async {
    String url =
        "http://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=76c6c21a49474c4db99b8ecccf23fc20";
    var responce = await http.get(url);
    var jsonData = jsonDecode(responce.body);
    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element['description'] != null) {
          ArticleModel articleMode = ArticleModel(
              tittle: element['title'],
              author: element['author'],
              description: element['description'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              content: element["context"]);
          news.add(articleMode);
        }
      });
    }
  }
}
