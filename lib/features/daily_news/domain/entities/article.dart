import 'package:equatable/equatable.dart';

class AritcleEntity extends Equatable {
  final int? id;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  const AritcleEntity(
      {this.author,
      this.content,
      this.description,
      this.id,
      this.publishedAt,
      this.title,
      this.url,
      this.urlToImage});

  @override
  List<Object?> get props => [
        id,
        author,
        title,
        description,
        url,
        urlToImage,
        publishedAt,
        content,
      ];
}
