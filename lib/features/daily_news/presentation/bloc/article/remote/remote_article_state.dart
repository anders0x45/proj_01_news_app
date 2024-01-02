import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:proj_1_news/features/daily_news/domain/entities/article.dart';

abstract class RemoteArticleState extends Equatable {
  final List<AritcleEntity>? articles;
  final DioException? error;

  const RemoteArticleState({this.articles, this.error});

  @override
  List<Object> get props => [articles!, error!];
}

class RemoteArticlesLoading extends RemoteArticleState {
  const RemoteArticlesLoading();
}

class RemoteAtriclesDone extends RemoteArticleState {
  const RemoteAtriclesDone(List<AritcleEntity> article)
      : super(articles: article);
}

class RemoteAtriclesError extends RemoteArticleState {
  const RemoteAtriclesError(DioException error) : super(error: error);
}
