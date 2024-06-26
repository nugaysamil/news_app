import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/feature/view_model/news/news_view_model.dart';
import 'package:news_app/feature/views/home/widgets/tabbar/home_tabbar.dart';
import 'package:news_app/feature/views/home/widgets/news_slider/mixin/news_slider_mixin.dart';
import 'package:news_app/product/init/theme/app_font_style.dart';
import 'package:news_app/product/model/article_model.dart';
import 'package:news_app/product/utility/constant/string_constant.dart';

part 'widgets/news_slider/card/news_card.dart';
part 'widgets/news_slider/widgets/article_list_item.dart';

class NewsView extends ConsumerStatefulWidget {
  @override
  _NewsViewState createState() => _NewsViewState();
}

class _NewsViewState extends ConsumerState<NewsView> with NewsSliderMixin {
  int _current = 1;

  @override
  Widget build(BuildContext context) {
    final newsState = ref.watch(newsViewModelProvider);
    return Scaffold(
      body: newsState.when(
        data: (news) {
          final validArticles = filterValidArticles(news.articles);
          return Column(
            children: [
              CarouselSlider.builder(
                itemCount: validArticles.length,
                itemBuilder: (context, index, realIndex) {
                  final article = validArticles[index];
                  return NewsCard(article: article);
                },
                options: CarouselOptions(
                  initialPage: 0,
                  reverse: true,
                  height: 250.0,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  viewportFraction: 0.8,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: buildPageIndicators(validArticles, _current),
              ),
              HomeTabBar(),
              Expanded(
                child: ListView.separated(
                  itemCount: validArticles.length,
                  separatorBuilder: (context, index) => Divider(
                    indent: 20,
                    endIndent: 20,
                    thickness: 0,
                    color: Colors.black87,
                  ),
                  itemBuilder: (context, index) {
                    final article = validArticles[index];
                    return ArticleListItem(article: article);
                  },
                ),
              ),
            ],
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
