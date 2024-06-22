part of '../../explore_screen.dart';


class ArticleList extends StatelessWidget {
  final List<Article> validArticles;

  const ArticleList({
    Key? key,
    required this.validArticles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: validArticles.length,
      separatorBuilder: (context, index) => DividerWidget(),
      itemBuilder: (context, index) {
        final article = validArticles[index];
        return ArticleItem(article: article);
      },
    );
  }
}
