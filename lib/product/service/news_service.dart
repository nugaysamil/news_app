import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/product/model/product_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final newsServiceProvider = Provider<NewsService>((ref) {
  return NewsService();
});
class NewsService {
  final Dio _dio = Dio();

  Future<Product> fetchTopHeadlines() async {
    final response = await _dio
        .get('https://newsapi.org/v2/top-headlines', queryParameters: {
      'country': 'us',
      'category': 'business',
      'apiKey': dotenv.env['API_KEY'],
    });

    if (response.statusCode == 200) {
      return Product.fromJson(response.data);
    } else {
      throw Exception('Failed to load news');
    }
  }
}
