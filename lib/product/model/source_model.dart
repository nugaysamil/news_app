import 'package:json_annotation/json_annotation.dart';
part 'source_model.g.dart';

@JsonSerializable()
class Source {
  final String? id;
  final String? name;

  Source({
    this.id,
    this.name,
  });

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);

  Map<String, dynamic> toJson() => _$SourceToJson(this);

  Source copyWith({
    String? id,
    String? name,
  }) =>
      Source(
        id: id ?? this.id,
        name: name ?? this.name,
      );
}
