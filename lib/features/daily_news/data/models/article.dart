import 'package:floor/floor.dart';

import '../../domain/entities/article.dart';

@Entity(tableName: 'article', primaryKeys: [''])
class ArticleModel extends AritcleEntity {
  const ArticleModel(
      {int? id,
      String? author,
      String? title,
      String? description,
      String? url,
      String? urlToImage,
      String? publishedAt,
      String? content});

  factory ArticleModel.fromJson(Map<String, dynamic> map) {
    return ArticleModel(
      author: map['author'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      url: map['url'] ?? '',
      urlToImage: map['urlToImage'] ?? '',
      publishedAt: map['publishedAt'] ?? '',
      content: map['content'] ?? '',
    );
  }
}
