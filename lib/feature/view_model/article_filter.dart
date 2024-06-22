
import 'package:news_app/product/model/article_model.dart';

class ArticleFilter {
  static List<Article> filterValidArticles(List<Article>? articles) {
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
}
