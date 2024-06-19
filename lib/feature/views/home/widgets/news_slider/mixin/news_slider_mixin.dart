import 'package:flutter/material.dart';
import 'package:news_app/product/generation/colors.gen.dart';
import 'package:news_app/product/model/article_model.dart';

mixin NewsSliderMixin {
  List<Article> filterValidArticles(List<Article>? articles) {
    return articles
            ?.where((article) {
              return article.urlToImage != null &&
                  article.urlToImage!.isNotEmpty &&
                  article.title != null &&
                  article.title!.isNotEmpty &&
                  article.source != null &&
                  article.source!.name != null &&
                  article.source!.name!.isNotEmpty;
            })
            .take(3)
            .toList() ??
        [];
  }

  List<Widget> buildPageIndicators(List<Article> articles, int currentIndex) {
    return articles.map((article) {
      int index = articles.indexOf(article);
      return Container(
        width: 15.0,
        height: 10.0,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: currentIndex == index ? ColorName.orange : ColorName.lightGrey,
        ),
      );
    }).toList();
  }
}
