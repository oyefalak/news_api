import 'package:flutter/material.dart';
import 'package:news_api/model/Article.dart';
import 'package:news_api/widget/NewsCardWidgets.dart';

class NewsDescriptionPage extends StatelessWidget {
  final Article data;
  const NewsDescriptionPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NewsCardWidgets(article: data),
    );
  }
}