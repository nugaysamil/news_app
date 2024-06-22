import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/feature/view_model/article_filter.dart';
import 'package:news_app/feature/view_model/login/login_view_model.dart';
import 'package:news_app/feature/view_model/news/news_view_model.dart';
import 'package:news_app/feature/views/explore/explore_screen.dart';
import 'package:news_app/product/generation/assets.gen.dart';
import 'package:news_app/product/init/theme/app_font_style.dart';
import 'package:news_app/product/model/article_model.dart';
import 'package:news_app/product/utility/constant/string_constant.dart';
import 'package:news_app/product/widget/bottom_navigation/bottom_navigation_widget.dart';
import 'package:news_app/product/widget/custom/explore_saved_appbar.dart';

class SavedScreen extends ConsumerStatefulWidget {
  SavedScreen({super.key});

  @override
  _SavedScreenState createState() => _SavedScreenState();
}

class _SavedScreenState extends ConsumerState<SavedScreen> {
  final LoginViewModel _loginViewModel = LoginViewModel();

  @override
  Widget build(BuildContext context) {
    final userPhoto = _loginViewModel.getProfilePhoto();
    final newsState = ref.watch(newsViewModelProvider);

    return Scaffold(
      appBar: ExploreAndSavedAppBar(
        userPhoto: userPhoto,
      ),
      bottomNavigationBar: BottomNavigationWidget(),
      body: Column(
        children: [
          _PageTitle(),
          newsState.when(
            data: (news) {
              final validArticles =
                  ArticleFilter.filterValidArticles(news.articles);
              return Expanded(
                child: SavedArticleList(validArticles: validArticles),
              );
            },
            loading: () => Center(child: CircularProgressIndicator()),
            error: (error, stackTrace) => Center(child: Text('Error: $error')),
          ),
        ],
      ),
    );
  }
}

class SavedArticleList extends StatelessWidget {
  final List<Article> validArticles;

  const SavedArticleList({
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
        return SavedArticleItem(article: article);
      },
    );
  }
}

class SavedArticleItem extends StatelessWidget {
  final Article article;

  const SavedArticleItem({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
      child: Card(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  child: Image.network(
                    article.urlToImage ?? '',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: Row(
                    children: [
                      ImageIcon(
                        size: 20,
                        color: Colors.white,
                        AssetImage(
                          Assets.icons.straightLine.path,
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        '15',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      StringConstant.travel,
                      style: GoogleFonts.lato(
                        fontSize: 12,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 4),
                    SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Latest added:',
                          style: GoogleFonts.lato(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '${article.publishedAt ?? ''}',
                          style: GoogleFonts.lato(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PageTitle extends StatelessWidget {
  const _PageTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            StringConstant.savedPages,
            style: AppStyles.latoTextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
