part of '../news_slider.dart';

class NewsCard extends StatelessWidget {
  final Article article;

  const NewsCard({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        image: DecorationImage(
          image: NetworkImage(article.urlToImage!),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 5.0,
            left: 10.0,
            right: 10.0,
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        article.source!.name!,
                        style: AppStyles.latoWhiteTextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        '•',
                        style: AppStyles.latoWhiteTextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        '${article.publishedAt?.difference(DateTime.now()).inHours} hours ago',
                        style: AppStyles.latoWhiteTextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    article.title!,
                    style: AppStyles.latoWhiteTextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
