import 'package:json_annotation/json_annotation.dart';
import 'article_model.dart';

part 'product_model.g.dart';

@JsonSerializable()
class Product {
  final String? status;
  final int? totalResults;
  final List<Article>? articles;

  Product({
    this.status,
    this.totalResults,
    this.articles,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
