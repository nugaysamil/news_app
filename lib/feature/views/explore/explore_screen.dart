import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/feature/views/explore/widgets/appbar/explore_screen_appbar.dart';
import 'package:news_app/feature/views/explore/widgets/mixin/explore_screen_mixin.dart';
import 'package:news_app/feature/view_model/login/login_view_model.dart';
import 'package:news_app/feature/view_model/news/news_view_model.dart';
import 'package:news_app/product/init/theme/app_font_style.dart';
import 'package:news_app/product/widget/bottom_navigation/bottom_navigation_widget.dart';
import 'package:news_app/product/model/article_model.dart';
import 'package:news_app/product/utility/constant/string_constant.dart';

part 'widgets/text/page_title_text.dart';
part 'widgets/text/divider_widget.dart';
part 'widgets/text/article_item.dart';
part 'widgets/text/article_list.dart';

class ExploreScreen extends ConsumerStatefulWidget {
  ExploreScreen({super.key});

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends ConsumerState<ExploreScreen>
    with ExploreScreenMixin {
  final LoginViewModel _loginViewModel = LoginViewModel();

  @override
  Widget build(BuildContext context) {
    final userPhoto = _loginViewModel.getProfilePhoto();
    final newsState = ref.watch(newsViewModelProvider);

    return Scaffold(
      appBar: ExploreAppBar(
        userPhoto: userPhoto,
      ),
      bottomNavigationBar: BottomNavigationWidget(),
      body: Column(
        children: [
          PageTitle(textTitle: StringConstant.trendingIndonesia),
          Flexible(
            child: newsState.when(
              data: (news) {
                final validArticles = filterValidArticles(news.articles);
                return Column(
                  children: [
                    Expanded(child: ArticleList(validArticles: validArticles)),
                    DividerWidget(),
                    PageTitle(textTitle: StringConstant.trendingWorld),
                    Expanded(child: ArticleList(validArticles: validArticles)),
                  ],
                );
              },
              loading: () => Center(child: CircularProgressIndicator()),
              error: (error, stackTrace) =>
                  Center(child: Text('Error: $error')),
            ),
          ),
        ],
      ),
    );
  }
}
