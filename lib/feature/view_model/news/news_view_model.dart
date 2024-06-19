import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/product/model/product_model.dart';
import 'package:news_app/product/service/news_service.dart';

final newsViewModelProvider =
    StateNotifierProvider<NewsViewModel, AsyncValue<Product>>((ref) {
  return NewsViewModel(ref);
});

class NewsViewModel extends StateNotifier<AsyncValue<Product>> {
  final Ref _ref;

  NewsViewModel(this._ref) : super(const AsyncValue.loading()) {
    fetchNews();
  }

  Future<void> fetchNews() async {
    try {
      final news = await _ref.read(newsServiceProvider).fetchTopHeadlines();
      state = AsyncValue.data(news);
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace);
    }
  }
}
